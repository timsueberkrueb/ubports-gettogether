import QtQuick 2.0
import Ubuntu.Components 1.3

Rectangle { 
    property alias text: label.text
    signal clicked

    color: "#878787"

    border.width: 2
    border.color: "white"

    Label {
        id: label
        anchors.centerIn: parent
        font.family: "Ubuntu"
        font.pixelSize: units.dp(16)
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
