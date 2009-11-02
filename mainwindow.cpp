/*

 The MIT License

 Copyright (c) 2008 Jeff Aigner 

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.

 */


#include <QtGui>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>

//#define WIN32 1

#ifndef WIN32

#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>

#else

#include <winsock2.h>
#include <ws2tcpip.h>


#endif

#include "mainwindow.h"

#define BUFSIZE 8192


void *get_in_addr(struct sockaddr *sa) {
	if(sa->sa_family == AF_INET)
		return &(((struct sockaddr_in*)sa)->sin_addr);
	return &(((struct sockaddr_in6*)sa)->sin6_addr);
}

MainWindow::MainWindow()
{
	setupUi(this);

	connect(inputArea, SIGNAL(returnPressed()),
			this, SLOT(sendLine()));

	// force the QTextEdit into HTML mode
	textArea->setHtml("");

	buffer.clear();

	connectSocket();

	return;
}

/* send line from text input to socket */
void MainWindow::sendLine()
{
	QString text = inputArea->text();
	int len;

	QByteArray enc = text.toUtf8();

	// get ready for sending to socket
	char *buf = new char[enc.size() + 2];
	strcpy(buf, enc.data());
	len = strlen(buf);
	buf[len] = '\n'; buf[len+1] = '\0';

	send(wsn->socket(), buf, strlen(buf), 0);

	printLine(text);
	printLine("<br>");
	inputArea->newLine();
}

void MainWindow::connectSocket()
{
	struct addrinfo hints, *servinfo, *p;
	int rv, sockfd;

#ifdef WIN32
	WSADATA wsaData;

	if(WSAStartup(MAKEWORD(1, 1), &wsaData) != 0) {
		printLine(tr("WSAStartup failed\n"));
		return;
	}
#endif


	memset(&hints, 0, sizeof(hints));

	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	// retreive endpoints
	if((rv = getaddrinfo("medievia.com", "4000", &hints, &servinfo)) != 0) {
		printLine(tr("getaddrinfo error\n"));
		return;
	}

	// loop through endpoints
	for(p = servinfo; p != NULL; p = p->ai_next) {
		if((sockfd = socket(p->ai_family, p->ai_socktype,
						p->ai_protocol)) == -1) {
			printLine(tr("client: socket\n"));
			continue;
		}

		if(::connect(sockfd, p->ai_addr, p->ai_addrlen) == -1) {
			closeSocket(sockfd);
			printLine(tr("client: connect\n"));
			continue;
		}

		break;
	}

	if(p == NULL) {
		printLine(tr("client: failed to connect\n"));
		return;
	}


#ifndef WIN32
	char s[INET6_ADDRSTRLEN];

	inet_ntop(p->ai_family, get_in_addr((struct sockaddr *)p->ai_addr),
			s, sizeof(s));
	printLine(tr("client: connecting to %1\n").arg(s));
#else
	char hostInfo[NI_MAXHOST];

	if( getnameinfo(
			(struct sockaddr *)p->ai_addr, sizeof(struct sockaddr),
			hostInfo, NI_MAXHOST,
			NULL, 0,
			NI_NUMERICHOST) != 0) {

		printLine(tr("getnameinfo failed %1\n").arg(WSAGetLastError()));
	} else {
		printLine(tr("client: connecting to %1\n").arg(hostInfo));
	}
#endif

	freeaddrinfo(servinfo);

	// set up the socket notifiers
	
	rsn = new QSocketNotifier(sockfd, QSocketNotifier::Read);
	wsn = new QSocketNotifier(sockfd, QSocketNotifier::Write);

	connect(rsn, SIGNAL(activated(int)), this, SLOT(readData()));

	rsn->setEnabled(TRUE);
	wsn->setEnabled(FALSE);
	
}

void MainWindow::readData()
{
	char buf[BUFSIZE];
	int len;

	rsn->setEnabled(FALSE);

	memset(&buf, 0, BUFSIZE);

	len = recv(rsn->socket(), buf, BUFSIZE, 0);


	if(len == 0) {
		printLine(tr("Connection zapped!\n"));
		rsn->setEnabled(FALSE);
		return;
	} else if(len < 0) {
		printLine(tr("Socket Error: %1\n").arg(strerror(errno)));
		rsn->setEnabled(FALSE);
		return;
	}

	if(buf[len-2] == -1 && buf[len-1] == -7) {
		// end of string from server
		buf[len-2] = '\0';
		buffer.append(buf);
		printLine(cv.Convert(buffer));
		buffer.clear();
	} else {
		// still more data to read
		buffer.append(buf);
	}

	rsn->setEnabled(TRUE);
}

void MainWindow::printLine(QString data) {
	data.replace("\n", "<br>");
	textArea->append(data);
}

void MainWindow::closeSocket(int sockfd) {
#ifndef WIN32
	::close(sockfd);
#else
	::closesocket(sockfd);
#endif
	return;
}

