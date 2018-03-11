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

        Grid {
            Layout.fillWidth: true
            Layout.fillHeight: true
            columns: 3
            rows: 5

            Repeater {
                model: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0,
                        "+", "-", "*", "/"]
                delegate: CalculatorButton {
                    text: modelData.toString ()
                    height: parent.height / parent.rows
                    width: parent.width / parent.columns
                    onClicked: textField.text += modelData.toString()
                }
            }

            CalculatorButton {
                height: parent.height / parent.rows
                width: parent.width / parent.columns
                text: "="
                onClicked: py.calculate()
                color: "#00b555"
            }
        }
    }
}
