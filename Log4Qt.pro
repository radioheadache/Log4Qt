
include(src/Log4Qt.pri)

TEMPLATE = lib
QT += core xml network
QT -= gui
TARGET = log4qt

LOG4QT_VERSION_MAJOR = 1
LOG4QT_VERSION_MINOR = 1
LOG4QT_VERSION_RELEASE = 0

LOG4QT_VERSION = '\\"$${LOG4QT_VERSION_MAJOR}.$${LOG4QT_VERSION_MINOR}.$${LOG4QT_VERSION_RELEASE}\\"'
DEFINES += LOG4QT_VERSION_STR=\"$${LOG4QT_VERSION}\"
DEFINES += LOG4QT_VERSION=$${LOG4QT_VERSION}

VERSION = 1.1.0

DEPENDPATH += src src/helpers src/spisrc/ varia
INCLUDEPATH += src src/helpers src/spi src/varia

INSTALLS += target deploy

target.path = /usr/lib
deploy.files = deploy/include/*
deploy.path = /usr/include/Log4Qt
