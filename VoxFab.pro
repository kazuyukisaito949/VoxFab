# ----------------------------------------------------------------------------
# The following information is required for Compiling with Qt.
# Please revise path to some libraries and some options for your environment.
# ----------------------------------------------------------------------------

TEMPLATE = app
TARGET = VoxFab
DESTDIR = release
QT += core gui xml opengl
CONFIG += debug
DEFINES += QT_XML_LIB QT_OPENGL_LIB USE_ZLIB_COMPRESSION USE_OPEN_GL QT_DLL PREC_MED
INCLUDEPATH += . \
    ../Voxelyze \
    ./GeneratedFiles/$(Configuration) \
    ./GeneratedFiles \

LIBS += -framework OpenGL \
    -lz \
    -lm

DEPENDPATH += .
MOC_DIR += ./GeneratedFiles/release
OBJECTS_DIR += release
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles
include(VoxFab.pri)
