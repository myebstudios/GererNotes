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

    header: Pane {
        id: header
        padding: 32

        background: Rectangle {
            color: colorVariables.backgroundColor2
        }

        RowLayout {
            width: parent.width
            spacing: 16

            Image {
                id: backButton
                source: "../assets/back.png"
                Layout.alignment: Qt.AlignTop
            }

            ColumnLayout {
                Layout.fillWidth: true
                spacing: 8

                TextInput {
                    id: titleInput
                    Layout.fillWidth: true
                    clip: true
                    font: typographyVariables.titleFont
                    color: colorVariables.light
                    text: "New note"

                    PlaceholderText {
                        text: "Enter note title"
                        visible: parent.text.length === 0
                        font: parent.font
                        color: parent.color
                        opacity: 0.33
                    }
                }

                Text {
                    text: qsTr("Yesterday, 23:53")
                    font: typographyVariables.bodyFont
                    color: colorVariables.light
                    opacity: 0.5
                }

                Row {
                    spacing: 8

                    Text {
                        text: qsTr("Tags")
                        color: "white"
                    }
                    Text {
                        text: qsTr("Tags")
                        color: "white"
                    }
                    Text {
                        text: qsTr("Tags")
                        color: "white"
                    }
                    Text {
                        text: qsTr("Tags")
                        color: "white"
                    }
                }
            }

            GrButton {
                text: "Save"
                iconSource: "../assets/save.png"
                // Layout.alignment: Qt.AlignTop
            }
        }
    }

    StackLayout {
        anchors.fill: parent

        Pane {
            Layout.fillHeight: true
            Layout.fillWidth: true
            leftPadding: 32
            rightPadding: 32

            RowLayout {
                // spacing: 8
                anchors.fill: parent

                // Text tools
                ColumnLayout {
                    width: 24
                    Layout.alignment: Qt.AlignTop
                    spacing: 8

                    Rectangle {
                        height: 4
                    }

                    Rectangle {
                        width: parent.width
                        height: width
                        color: colorVariables.primaryColor
                        radius: 4
                    }

                    Rectangle {
                        width: parent.width
                        height: width
                        color: colorVariables.primaryColor
                        radius: 4
                    }

                    Rectangle {
                        width: parent.width
                        height: width
                        color: colorVariables.primaryColor
                        radius: 4
                    }
                }

                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    TextArea {
                        anchors.topMargin: 32
                        text: typographyVariables.multylinePlaceholder
                        wrapMode: "WordWrap"
                        font.pixelSize: 18
                        textFormat: "MarkdownText"

                        selectionColor: colorVariables.backgroundColor3
                        selectedTextColor: colorVariables.light
                    }
                }
            }
        }
    }
}
