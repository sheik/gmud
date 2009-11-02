/********************************************************************************
** Form generated from reading ui file 'mainwindow.ui'
**
** Created: Tue Dec 30 16:41:12 2008
**      by: Qt User Interface Compiler version 4.4.3
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QGridLayout>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QStatusBar>
#include <QtGui/QTextEdit>
#include <QtGui/QWidget>
#include "qinputedit.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QTextEdit *textArea;
    QInputEdit *inputArea;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
    if (MainWindow->objectName().isEmpty())
        MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
    MainWindow->resize(786, 424);
    centralwidget = new QWidget(MainWindow);
    centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
    gridLayout = new QGridLayout(centralwidget);
    gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
    textArea = new QTextEdit(centralwidget);
    textArea->setObjectName(QString::fromUtf8("textArea"));
    QPalette palette;
    QBrush brush(QColor(255, 255, 255, 255));
    brush.setStyle(Qt::SolidPattern);
    palette.setBrush(QPalette::Active, QPalette::WindowText, brush);
    palette.setBrush(QPalette::Active, QPalette::Text, brush);
    QBrush brush1(QColor(0, 0, 0, 255));
    brush1.setStyle(Qt::SolidPattern);
    palette.setBrush(QPalette::Active, QPalette::Base, brush1);
    palette.setBrush(QPalette::Inactive, QPalette::WindowText, brush);
    palette.setBrush(QPalette::Inactive, QPalette::Text, brush);
    palette.setBrush(QPalette::Inactive, QPalette::Base, brush1);
    QBrush brush2(QColor(69, 69, 69, 255));
    brush2.setStyle(Qt::SolidPattern);
    palette.setBrush(QPalette::Disabled, QPalette::WindowText, brush2);
    palette.setBrush(QPalette::Disabled, QPalette::Text, brush2);
    QBrush brush3(QColor(212, 208, 200, 255));
    brush3.setStyle(Qt::SolidPattern);
    palette.setBrush(QPalette::Disabled, QPalette::Base, brush3);
    textArea->setPalette(palette);
    QFont font;
    font.setFamily(QString::fromUtf8("Medievia Sans Mono"));
    font.setPointSize(10);
    textArea->setFont(font);
    textArea->setStyleSheet(QString::fromUtf8(".m30 {\n"
"	color: black;\n"
"} \n"
".m31 {\n"
"	color: red;\n"
"}\n"
".m32 {\n"
"	color: green;\n"
"}\n"
".m33 {\n"
"	color: yellow;\n"
"}\n"
".m34 {\n"
"	color: blue;\n"
"}\n"
".m35 {\n"
"	color: magenta;\n"
"}\n"
".m36 {\n"
"	color: cyan;\n"
"}\n"
".m37 {\n"
"	color: white;\n"
"}\n"
".m39 {\n"
"	color: white;\n"
"}\n"
".m40 {\n"
"	background-color: black;\n"
"}\n"
"\n"
""));
    textArea->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
    textArea->setReadOnly(true);

    gridLayout->addWidget(textArea, 0, 0, 1, 1);

    inputArea = new QInputEdit(centralwidget);
    inputArea->setObjectName(QString::fromUtf8("inputArea"));
    QPalette palette1;
    palette1.setBrush(QPalette::Active, QPalette::WindowText, brush);
    palette1.setBrush(QPalette::Active, QPalette::Text, brush);
    palette1.setBrush(QPalette::Active, QPalette::Base, brush1);
    palette1.setBrush(QPalette::Inactive, QPalette::WindowText, brush);
    palette1.setBrush(QPalette::Inactive, QPalette::Text, brush);
    palette1.setBrush(QPalette::Inactive, QPalette::Base, brush1);
    palette1.setBrush(QPalette::Disabled, QPalette::WindowText, brush2);
    palette1.setBrush(QPalette::Disabled, QPalette::Text, brush2);
    palette1.setBrush(QPalette::Disabled, QPalette::Base, brush3);
    inputArea->setPalette(palette1);
    inputArea->setFrame(false);

    gridLayout->addWidget(inputArea, 1, 0, 1, 1);

    MainWindow->setCentralWidget(centralwidget);
    menubar = new QMenuBar(MainWindow);
    menubar->setObjectName(QString::fromUtf8("menubar"));
    menubar->setGeometry(QRect(0, 0, 786, 22));
    menu_File = new QMenu(menubar);
    menu_File->setObjectName(QString::fromUtf8("menu_File"));
    MainWindow->setMenuBar(menubar);
    statusbar = new QStatusBar(MainWindow);
    statusbar->setObjectName(QString::fromUtf8("statusbar"));
    MainWindow->setStatusBar(statusbar);

    menubar->addAction(menu_File->menuAction());

    retranslateUi(MainWindow);

    QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
    MainWindow->setWindowTitle(QApplication::translate("MainWindow", "GMUD", 0, QApplication::UnicodeUTF8));
    menu_File->setTitle(QApplication::translate("MainWindow", "&File", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
