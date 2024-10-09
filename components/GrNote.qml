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
    property string folder: "folder name"

    Pane {
        Layout.fillWidth: true
        padding: 32

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
            spacing: 0

            ColumnLayout {
                Layout.fillWidth: true
                anchors.right: optionButton.left
                anchors.left: parent.left
                spacing: 4

                Text {
                    text: root.title
                    font: typographyVariables.bodyStrongFont
                    color: colorVariables.light
                }

                Row {
                    spacing: 8

                    Text {
                        text: root.date
                        font: typographyVariables.captionFont
                        color: colorVariables.light
                        opacity: 0.5
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    Pane {
                        topPadding: 2
                        rightPadding: 4
                        bottomPadding: 2
                        leftPadding: 4

                        background: Rectangle {
                            color: colorVariables.primaryColor
                            radius: 2
                            opacity: 0.16
                        }

                        Text {
                            text: root.folder
                            font: typographyVariables.captionFont
                            color: colorVariables.primaryColor
                        }
                    }
                }

                // Rectangle {
                //     color: "green"
                //     anchors.fill: parent
                // }
            }

            Image {
                id: optionButton
                source: "../assets/more.png"
                Layout.alignment: Qt.AlignCenter
                anchors.right: parent.right

                // Rectangle {
                //     color: "red"
                //     anchors.fill: parent
                // }
            }
        }
    }
}
