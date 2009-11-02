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

#include "qinputedit.h"

void QInputEdit::keyPressEvent(QKeyEvent *event) {
	if(event->key() == Qt::Key_Up) {
		nextLine();
	} else if(event->key() == Qt::Key_Down) {
		prevLine();	
	} else {
		QLineEdit::keyPressEvent(event);
	}
}

/* save the current line into
   the back buffer and clear
   the input area
   */
void QInputEdit::newLine() {
	bbuf.prepend(QLineEdit::text());
	QLineEdit::clear();
	i = bbuf.begin();
	begin = true;
}

/* get the next line in the
   back buffer and apply it
   */
void QInputEdit::nextLine() {
	if((i+1) != bbuf.end()) {
		if(begin) {
			QLineEdit::setText(*i);
			begin = false;
		} else {
			i++; // increment the iterator
			QLineEdit::setText(*i);
		}
	}

}

void QInputEdit::prevLine() {
	if(begin) {
		QLineEdit::clear();
		return;
	}

	if(i != bbuf.begin()) {
		i--;
		QLineEdit::setText(*i);
	}

	if(i == bbuf.begin())
		begin = true;
}


QInputEdit::QInputEdit(QWidget *parent)
	: QLineEdit(parent)
{
	begin = true;
}

