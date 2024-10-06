import QtQuick
import QtQuick.Controls
import "../components"

Page {
    background: Rectangle {
        color: "transparent"
    }

    Column {
        spacing: 64

        Column {
            spacing: 24

            Image {
                source: "../assets/empty_list.png"
            }

            Text {
                text: qsTr("Oops! No notes yet")
                font.pixelSize: 28
                font.weight: 800
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        GrButton {
            text: "New note"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
