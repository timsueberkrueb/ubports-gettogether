import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import io.thp.pyotherside 1.0

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
            onAccepted: py.calculate()
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

    Python {
        id: py

        function calculate () {
            py.call("ex_05_calculator.calculate", [textField.text], function (result) {
                textField.text = result;
            });
        }

        Component.onCompleted: {
            addImportPath(Qt.resolvedUrl("."));
            importModule_sync("ex_05_calculator");
        }
    }
}
