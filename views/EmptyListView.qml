import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"
import "../components"

Page {
    id: root
    anchors.fill: parent

    ColorVariables {
        id: colorVariables
    }

    TypographyVariables {
        id: typographyVariables
    }

    background: Rectangle {
        color: colorVariables.backgroundColor1
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 64

        ColumnLayout{
            spacing: 24
            Image {
                id: logo
                source: "../assets/empty_list.png"
            }

            Text {
                text: qsTr("Oops! No notes yet")
                font: typographyVariables.titleFont
                color: "white"
                Layout.alignment: Qt.AlignHCenter
            }
        }

        GrButton {
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                root.parent.currentIndex = 1
            }
        }
    }
}
