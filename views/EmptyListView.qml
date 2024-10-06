import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"
import "../components"

Page {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true

    background: Rectangle {
        color: "transparent"
    }

    // Variables
    ColorVariables {
        id: colorVariables
    }
    TypographyVariables {
        id: typographyVariables
    }

    ColumnLayout {
        spacing: 64
        anchors.centerIn: parent
        ColumnLayout {
            spacing: 24

            Image {
                source: "../assets/empty_list.png"
            }

            Text {
                text: qsTr("Oops! No notes yet")
                font: typographyVariables.titleFont
                color: colorVariables.light
                Layout.alignment: Qt.AlignHCenter
            }
        }

        GrButton {
            Layout.alignment: Qt.AlignHCenter

            text: "New note"
        }
    }
}
