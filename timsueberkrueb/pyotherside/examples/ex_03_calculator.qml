import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Item {
    width: 320; height: 520

    ColumnLayout {
        anchors { fill: parent; margins: 16 }
        spacing: 16

        TextField {
            id: textField
            Layout.fillWidth: true
            selectByMouse: true
            text: "40 + 2"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "#E95420"

            Text {
                id: label
                anchors.centerIn: parent
                font.family: "Ubuntu Mono"
                font.pixelSize: 30
                text: "[Insert Buttons]"
                color: "white"
                transform: Rotation {
                    angle: 45; origin.x: width/2; origin.y: 0
                }
            }
        }
    }
}
