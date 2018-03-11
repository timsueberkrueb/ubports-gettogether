import QtQuick 2.0

Rectangle { 
    property alias text: label.text
    signal clicked

    color: "#878787"

    border.width: 2
    border.color: "white"

    Text {
        id: label
        anchors.centerIn: parent
        font.family: "Ubuntu"
        font.pixelSize: 16
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
