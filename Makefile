#############################################################################
# Makefile for building: gmud.app/Contents/MacOS/gmud
# Generated by qmake (2.01a) (Qt 4.4.3) on: Tue Dec 30 16:41:10 2008
# Project:  gmud.pro
# Template: app
# Command: /usr/local/Trolltech/Qt-4.4.3/bin/qmake -macx -o Makefile gmud.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W $(DEFINES)
INCPATH       = -I/usr/local/Trolltech/Qt-4.4.3/mkspecs/macx-g++ -I. -I/usr/local/Trolltech/Qt-4.4.3/lib/QtCore.framework/Versions/4/Headers -I/usr/local/Trolltech/Qt-4.4.3/include/QtCore -I/usr/local/Trolltech/Qt-4.4.3/include/QtCore -I/usr/local/Trolltech/Qt-4.4.3/lib/QtNetwork.framework/Versions/4/Headers -I/usr/local/Trolltech/Qt-4.4.3/include/QtNetwork -I/usr/local/Trolltech/Qt-4.4.3/include/QtNetwork -I/usr/local/Trolltech/Qt-4.4.3/lib/QtGui.framework/Versions/4/Headers -I/usr/local/Trolltech/Qt-4.4.3/include/QtGui -I/usr/local/Trolltech/Qt-4.4.3/include/QtGui -I/usr/local/Trolltech/Qt-4.4.3/include -I. -I. -I. -F/usr/local/Trolltech/Qt-4.4.3/lib
LINK          = g++
LFLAGS        = -headerpad_max_install_names
LIBS          = $(SUBLIBS) -F/usr/local/Trolltech/Qt-4.4.3/lib -L/usr/local/Trolltech/Qt-4.4.3/lib -framework QtGui -L/usr/local/Trolltech/Qt-4.4.3/lib -F/usr/local/Trolltech/Qt-4.4.3/lib -framework Carbon -framework AppKit -framework QtNetwork -framework QtCore -lz -lm -framework ApplicationServices
AR            = ar cq
RANLIB        = ranlib -s
QMAKE         = /usr/local/Trolltech/Qt-4.4.3/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = $(COPY_FILE)
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
export MACOSX_DEPLOYMENT_TARGET = 10.3

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		ansitohtml.cpp \
		qinputedit.cpp moc_mainwindow.cpp
OBJECTS       = main.o \
		mainwindow.o \
		ansitohtml.o \
		qinputedit.o \
		moc_mainwindow.o
DIST          = /usr/local/Trolltech/Qt-4.4.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac-g++.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_pre.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/debug.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_post.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/objective_c.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/rez.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/sdk.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/lex.prf \
		gmud.pro
QMAKE_TARGET  = gmud
DESTDIR       = 
TARGET        = gmud.app/Contents/MacOS/gmud

####### Custom Compiler Variables
QMAKE_COMP_QMAKE_OBJECTIVE_CFLAGS = -pipe \
		-g \
		-Wall \
		-W


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile gmud.app/Contents/PkgInfo gmud.app/Contents/Info.plist $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	@$(CHK_DIR_EXISTS) gmud.app/Contents/MacOS/ || $(MKDIR) gmud.app/Contents/MacOS/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: gmud.pro  /usr/local/Trolltech/Qt-4.4.3/mkspecs/macx-g++/qmake.conf /usr/local/Trolltech/Qt-4.4.3/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac-g++.conf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_pre.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/debug.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_post.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/objective_c.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/rez.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/sdk.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.4.3/lib/QtGui.framework/QtGui.prl \
		/usr/local/Trolltech/Qt-4.4.3/lib/QtCore.framework/QtCore.prl \
		/usr/local/Trolltech/Qt-4.4.3/lib/QtNetwork.framework/QtNetwork.prl
	$(QMAKE) -macx -o Makefile gmud.pro
/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/unix.conf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac.conf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/common/mac-g++.conf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/qconfig.pri:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_functions.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt_config.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/exclusive_builds.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_pre.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_pre.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/debug.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/default_post.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/default_post.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/objective_c.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/warn_on.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/qt.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/unix/thread.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/moc.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/rez.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/mac/sdk.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/resources.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/uic.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/yacc.prf:
/usr/local/Trolltech/Qt-4.4.3/mkspecs/features/lex.prf:
/usr/local/Trolltech/Qt-4.4.3/lib/QtGui.framework/QtGui.prl:
/usr/local/Trolltech/Qt-4.4.3/lib/QtCore.framework/QtCore.prl:
/usr/local/Trolltech/Qt-4.4.3/lib/QtNetwork.framework/QtNetwork.prl:
qmake:  FORCE
	@$(QMAKE) -macx -o Makefile gmud.pro

gmud.app/Contents/PkgInfo: 
	@$(CHK_DIR_EXISTS) gmud.app/Contents || $(MKDIR) gmud.app/Contents 
	@$(DEL_FILE) gmud.app/Contents/PkgInfo
	@echo "APPL????" >gmud.app/Contents/PkgInfo
gmud.app/Contents/Info.plist: 
	@$(CHK_DIR_EXISTS) gmud.app/Contents || $(MKDIR) gmud.app/Contents 
	@$(DEL_FILE) gmud.app/Contents/Info.plist
	@sed -e "s,@ICON@,,g" -e "s,@EXECUTABLE@,gmud,g" -e "s,@TYPEINFO@,????,g" /usr/local/Trolltech/Qt-4.4.3/mkspecs/macx-g++/Info.plist.app >gmud.app/Contents/Info.plist
dist: 
	@$(CHK_DIR_EXISTS) .tmp/gmud1.0.0 || $(MKDIR) .tmp/gmud1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/gmud1.0.0/ && $(COPY_FILE) --parents mainwindow.h ansitohtml.h qinputedit.h .tmp/gmud1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp ansitohtml.cpp qinputedit.cpp .tmp/gmud1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/gmud1.0.0/ && (cd `dirname .tmp/gmud1.0.0` && $(TAR) gmud1.0.0.tar gmud1.0.0 && $(COMPRESS) gmud1.0.0.tar) && $(MOVE) `dirname .tmp/gmud1.0.0`/gmud1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/gmud1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) -r gmud.app
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: ansitohtml.h \
		ui_mainwindow.h \
		mainwindow.h
	/usr/local/Trolltech/Qt-4.4.3/bin/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui \
		qinputedit.h
	/usr/local/Trolltech/Qt-4.4.3/bin/uic mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		ansitohtml.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ansitohtml.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

ansitohtml.o: ansitohtml.cpp ansitohtml.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ansitohtml.o ansitohtml.cpp

qinputedit.o: qinputedit.cpp qinputedit.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qinputedit.o qinputedit.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
