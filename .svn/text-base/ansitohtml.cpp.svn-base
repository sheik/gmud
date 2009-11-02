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


#include "ansitohtml.h"

AnsiToHtml::AnsiToHtml() {

}

QString AnsiToHtml::Convert(QString data) {
	data.replace("<", "&lt;");
	data.replace(">", "&gt;");

	// this block is a hack 
	// until QT 4.5 there is no support fort CSS :(
	data.replace(QRegExp("\033\\[30m([^\033]*)"), "<font style='color: black;'>\\1</font>");
	data.replace(QRegExp("\033\\[31m([^\033]*)"), "<font style='color: red;'>\\1</font>");
	data.replace(QRegExp("\033\\[32m([^\033]*)"), "<font style='color: green;'>\\1</font>");
	data.replace(QRegExp("\033\\[33m([^\033]*)"), "<font style='color: yellow;'>\\1</font>");
	data.replace(QRegExp("\033\\[34m([^\033]*)"), "<font style='color: blue;'>\\1</font>");
	data.replace(QRegExp("\033\\[35m([^\033]*)"), "<font style='color: magenta;'>\\1</font>");
	data.replace(QRegExp("\033\\[36m([^\033]*)"), "<font style='color: cyan;'>\\1</font>");
	data.replace(QRegExp("\033\\[37m([^\033]*)"), "<font style='color: white;'>\\1</font>");
	data.replace(QRegExp("\033\\[39m([^\033]*)"), "<font style='color: white;'>\\1</font>");

	// this should really be the only line here
	data.replace(QRegExp("\033\\[([0-9]+)m([^\033]*)"), "<font class='m\\1'>\\2</font>");

	// another hack because of no css
	data.replace("  ", "<font style='color: black;'>..</font>");


	return data;
}

