lessThan(QT_VERSION, 5.0) {
    error("SocNetV requires at least Qt 5.0!")
}

# START added for ArchLinux / openSUSE compatibility
INSTALLPATH = /
target.path = $$[INSTALLPATH]usr/bin
TARGET = socnetv

pixmap.path = $$[INSTALLPATH]usr/share/pixmaps
pixmap.files = src/images/socnetv.png

documentation.path = $$[INSTALLPATH]usr/share/doc/socnetv
documentation.files = manual

manpage.path = $$[INSTALLPATH]usr/share/man/man1
manpage.files = man/socnetv.1.gz

translations.path = $$[INSTALLPATH]usr/share/socnetv
translations.files = translations

doc.path = $$[INSTALLPATH]usr/share/doc/socnetv
doc.files = license changelog.gz NEWS README TODO COPYING AUTHORS INSTALL

INSTALLS += target pixmap documentation manpage translations doc

# END


TEMPLATE = app
CONFIG  += qt thread warn_on release 
#CONFIG  += qt thread warn_on release debug

LANGUAGE = C++

# support
QT += xml 
QT += network
QT += widgets
QT += printsupport 

INCLUDEPATH  += ./src
FORMS += src/forms/filteredgesbyweightdialog.ui \
        src/forms/webcrawlerdialog.ui \
        src/forms/nodeeditdialog.ui \
        src/forms/datasetselectdialog.ui \
        src/forms/randsmallworlddialog.ui \
        src/forms/randscalefreedialog.ui \
        src/forms/randerdosrenyidialog.ui

HEADERS += src/guide.h \
           src/graphicswidget.h \
           src/edge.h \
           src/edgeweight.h \
           src/graph.h \
           src/mainwindow.h \
           src/matrix.h \
           src/node.h \
           src/nodelabel.h \
           src/nodenumber.h \
           src/texteditor.h \
           src/vertex.h \ 
  	   src/parser.h \
	   src/filteredgesbyweightdialog.h \
	   src/webcrawlerdialog.h \
	   src/webcrawler.h \
	   src/datasetselectdialog.h \
    src/previewform.h \
    src/nodeeditdialog.h \
    src/randerdosrenyidialog.h \
    src/randsmallworlddialog.h \
    src/randscalefreedialog.h

SOURCES += src/guide.cpp \
           src/graphicswidget.cpp \
           src/edge.cpp \
           src/edgeweight.cpp \
           src/graph.cpp \
           src/main.cpp \
           src/mainwindow.cpp \
           src/matrix.cpp \
           src/node.cpp \
           src/nodelabel.cpp \
           src/nodenumber.cpp \
           src/texteditor.cpp \
           src/vertex.cpp \
           src/parser.cpp \
	   src/filteredgesbyweightdialog.cpp \
	   src/webcrawlerdialog.cpp \
	   src/webcrawler.cpp \
	   src/datasetselectdialog.cpp \
    src/previewform.cpp \
    src/nodeeditdialog.cpp \
    src/randerdosrenyidialog.cpp \
    src/randsmallworlddialog.cpp \
    src/randscalefreedialog.cpp



# Extra optimization flags
#win32 {
#  QMAKE_CXXFLAGS += -msse -mfpmath=sse -ffast-math  
#}
#unix:!macx{
#  QMAKE_CXXFLAGS += -ffast-math  
#}
#macx {
#  QMAKE_CXXFLAGS += -msse  -ffast-math 
#}

INCLUDEPATH +=  /usr/local/include /usr/include /usr/include/qt5 /usr/share/qt5/include 
INCLUDEPATH +=  /usr/local/include /usr/include /usr/include/qt  /usr/include/qt5 /usr/share/qt5/include

RESOURCES = src/src.qrc
win32 {
     RC_FILE = src/icon.rc
}

macx:ICON = src/images/socnetv.icns


TRANSLATIONS    = translations/socnetv_es.ts \ 
		  translations/socnetv_el.ts 




