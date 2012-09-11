# QtCreator project file

CONFIG    = debug
CONFIG   += link_pkgconfig
#CONFIG   += warn_on
PKGCONFIG = freetype2

DEFINES  = LINUX PHIL_LIGHT JUCE_NEW
DEFINES += DEBUG TWINDY_DEBUG

TARGET   = twindy
TEMPLATE = app

SOURCES  = \
    Source/TwindyApp.cpp \
    Source/ExtraComponents/Clock.cpp \
    Source/ExtraComponents/DrawableTextButton.cpp \
    Source/ExtraComponents/TracktionScheme.cpp \
    Source/ExtraComponents/TwindyTabbedComponent.cpp \
    Source/ExtraComponents/TwindyToggleButton.cpp \
    Source/PreferencesPages/AboutPage.cpp \
#    JuceLibraryCode/juce_amalgamated.cpp
    JuceLibraryCode/modules/juce_core/juce_core.cpp \
    JuceLibraryCode/modules/juce_data_structures/juce_data_structures.cpp \
    JuceLibraryCode/modules/juce_events/juce_events.cpp \
    JuceLibraryCode/modules/juce_graphics/juce_graphics.cpp \
    JuceLibraryCode/modules/juce_gui_basics/juce_gui_basics.cpp

HEADERS  = \
    Source/TwindyApp.h \
    Source/ExtraComponents/Clock.h \
    Source/ExtraComponents/DrawableTextButton.h \
    Source/ExtraComponents/TracktionScheme.h \
    Source/ExtraComponents/TwindyTabbedComponent.h \
    Source/ExtraComponents/TwindyToggleButton.h \
    Source/PreferencesPages/AboutPage.h

INCLUDEPATH = \
    JuceLibraryCode \
    Source \
    Source/ExtraComponents \
    Source/PreferencesPages

QMAKE_CXXFLAGS += -std=c++0x
#QMAKE_CXXFLAGS += -isystem ./JuceLibraryCode/modules/

#linux {
LIBS += -ldl -lpthread -lrt -lX11 -lXext -lXinerama
#}
