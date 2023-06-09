QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Tell the qcustomplot header that it will be used as library:
DEFINES += QCUSTOMPLOT_USE_LIBRARY

SOURCES += \
				credit.cpp \
				graphwindow.cpp \
				main.cpp \
				mainwindow.cpp \
				polish.cpp

HEADERS += \
				credit.h \
				graphwindow.h \
				mainwindow.h \
				polish.h


FORMS += \
				graphwindow.ui \
				mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../sharedlib-compilation/release/ -lqcustomplotd2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../sharedlib-compilation/debug/ -lqcustomplotd2

INCLUDEPATH += $$PWD/../sharedlib-compilation/debug
DEPENDPATH += $$PWD/../sharedlib-compilation/debug
