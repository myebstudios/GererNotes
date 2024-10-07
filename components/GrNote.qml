import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"

ColumnLayout {
    id: root
    spacing: 0
    Layout.fillWidth: true

    // Variables
    ColorVariables {
        id: colorVariables
    }
    TypographyVariables {
        id: typographyVariables
    }

    property string title: "Note title"
    property string date: "note date"

    Pane {
        Layout.fillWidth: true
        height: 100

        background: Rectangle {
            color: colorVariables.backgroundColor3
            topRightRadius: 8
            topLeftRadius: 8
        }

        Image {
            anchors.centerIn: parent
            source: "../assets/file.png"
        }
    }

    Pane {
        Layout.fillWidth: true
        padding: 12

        background: Rectangle {
            color: colorVariables.backgroundColor2
            bottomRightRadius: 8
            bottomLeftRadius: 8
        }

        RowLayout {
            anchors.fill: parent
            spacing: 8

            ColumnLayout {
                Layout.fillWidth: true
                spacing: 0

                Text {
                    id: title
                    text: root.title
                    font: typographyVariables.bodyStrongFont
                    color: colorVariables.light
                }

                Row {
                    spacing: 8

                    Text {
                        id: date
                        text: root.date
                        font: typographyVariables.captionFont
                        color: colorVariables.light
                        opacity: 0.5
                    }
                }
            }

            Image {
                source: "../assets/more.png"
            }
        }
    }
}
