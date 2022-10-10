QT += qml quick widgets dbus x11extras network svg
#sudo apt-get install libxkbcommon-x11-dev
#sudo apt-get install libxss-dev libxxf86vm-dev libxkbfile-dev libxv-dev
# sudo apt-get install libx11-dev
#sudo apt install libxcb-xkb-dev
#sudo apt-get install libxkbcommon-dev
TARGET = e-keyboard
TEMPLATE = app

SOURCES += src/xwrapper.cpp \
    src/xkblibwrapper.cpp \
    src/vkdbusinterface.cpp \
    src/singleinstance.cpp \
    src/settings.cpp \
    src/main.cpp \
    src/helper.cpp \
    src/adaptor.cpp \
    src/logger.cpp

RESOURCES += qml.qrc images.qrc

HEADERS += src/xwrapper.h \
    src/xkblibwrapper.h \
    src/vkdbusinterface.h \
    src/singleinstance.h \
    src/settings.h \
    src/helper.h \
    src/adaptor.h \
    src/logger.h

LIBS += -lxcb -lxkbcommon -lxkbcommon-x11 -lX11 -lXtst -lxcb-xkb

target.path = /usr/bin/

desktop_file.files = e-keyboard.desktop
desktop_file.path = /usr/share/applications/

autostart_file.files = e-keyboard-autostart.desktop
autostart_file.commands = mkdir -p /etc/xdg/autostart
autostart_file.path = /etc/xdg/autostart/

icon.files = keyboard.svg
icon.commands = mkdir -p /usr/share/e-keyboard
icon.path = /usr/share/e-keyboard/

INSTALLS += target desktop_file autostart_file icon
