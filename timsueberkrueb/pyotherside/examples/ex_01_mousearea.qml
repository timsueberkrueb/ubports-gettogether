import QtQuick 2.0

Rectangle {
    width: 640; height: 480
    color: "#E95420"

    Text {
        id: label
        anchors.centerIn: parent
        visible: false
        font.family: "Ubuntu Mono"
        font.pixelSize: 30
        text: "[Insert Python Magic]"
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            label.visible = true;
        }
    }
}
