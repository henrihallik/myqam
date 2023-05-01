# SPDX-License-Identifier: CC0-1.0

QT += core gui widgets opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
DEFINES += HAVE_TIFF
TARGET = qcam
TEMPLATE = app

SOURCES += cam_select_dialog.cpp \
           common/dng_writer.cpp \
           common/event_loop.cpp \
           common/image.cpp \
           common/options.cpp \
           common/stream_options.cpp \
           format_converter.cpp \
           main.cpp \
           main_window.cpp \
           message_handler.cpp \
           viewfinder_qt.cpp

HEADERS += cam_select_dialog.h \
           common/dng_writer.h \
           common/event_loop.h \
           common/image.h \
           common/options.h \
           common/stream_options.h \
           main_window.h \
           viewfinder_qt.h

RESOURCES += assets/feathericons/feathericons.qrc

# Point your PKG_CONFIG_PATH environment variable to the
# libcamera install path libcamera.pc file ($prefix/lib/pkgconfig/libcamera.pc)
LIBS += -lcamera
LIBS += -lcamera-base
LIBS += -pthread
LIBS += -levent
LIBS += -levent_pthreads

# Define the include directories for the external libraries
INCLUDEPATH += /usr/local/include/libcamera



contains(QT_CONFIG, opengl) {
    SOURCES += viewfinder_gl.cpp
    HEADERS += viewfinder_gl.h
    RESOURCES += assets/shader/shaders.qrc
}

DEFINES += QT_NO_KEYWORDS

# Disable the deprecated-copy warning for GCC 9 and Clang 10
#contains(QMAKE_CC, clang.*): equals(QMAKE_CXX_STANDARD, 17) {
 #   greaterThan(QMAKE_CXX_COMPILER_VERSION, 9): QMAKE_CXXFLAGS_WARN_ON += -Wno-deprecated-copy
#} else_contains(QMAKE_CC, gcc.*): equals(QMAKE_CXX_STANDARD, 17) {
 #   greaterThan(QMAKE_CXX_COMPILER_VERSION, 9): QMAKE_CXXFLAGS_WARN_ON += -Wno-deprecated-copy
#}

LIBS += -latomic \
        -ltiff

#LIBS += -L/usr/lib/x86_64-linux-gnu

QT += widgets

DISTFILES +=


