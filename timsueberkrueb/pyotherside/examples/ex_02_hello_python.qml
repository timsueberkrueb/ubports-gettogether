import QtQuick 2.0
import io.thp.pyotherside 1.0

Rectangle {
    width: 640; height: 480
    color: "#E95420"

    Text {
        id: label
        anchors.centerIn: parent
        font.family: "Ubuntu Mono"
        font.pixelSize: 30
        text: "[Nothing here yet]"
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            py.addImportPath(Qt.resolvedUrl("."));
            py.importModule("ex_02_hello_python", function(){
                label.text = py.call_sync("ex_02_hello_python.hello_world");
            });
        }
    }

    Python { id: py }
}
