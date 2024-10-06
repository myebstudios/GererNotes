import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    color: "#D77744"
    radius: 4
    implicitWidth: 114
    implicitHeight: 36

    property string text: "Click Me"

    Row {
        id: row
        spacing: 8
        anchors.centerIn: parent

        Image {
            width: 20
            height: 20
            source: "../assets/plus.png"
        }

        Text {
            id: text
            text: qsTr(root.text)
            font.pixelSize: 14
            font.weight: 600
            color: "#18191C"
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
