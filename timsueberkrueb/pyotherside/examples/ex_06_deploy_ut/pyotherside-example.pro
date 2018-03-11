TEMPLATE = app
TARGET = pyotherside-example

#load Ubuntu specific features
load(ubuntu-click)

QT += qml quick gui
CONFIG += c++11

UBUNTU_MANIFEST_FILE=click/manifest.json

SOURCES += src/main.cpp

RESOURCES += src/qml.qrc

CONF_FILES +=  click/pyotherside-example.apparmor

LIB_FILES += lib/

lib_files.path = /
lib_files.files += $${LIB_FILES}
INSTALLS+=lib_files

config_files.path = /
config_files.files += $${CONF_FILES}
INSTALLS+=config_files

desktop_file.path = /
desktop_file.files = click/pyotherside-example.desktop
desktop_file.CONFIG += no_check_exist
INSTALLS+=desktop_file

# Default rules for deployment.
isEmpty(UBUNTU_CLICK_BINARY_PATH) {
  target.path = /bin/
} else {
  target.path = $${UBUNTU_CLICK_BINARY_PATH}
}
INSTALLS+=target

DISTFILES += \
    click/manifest.json
