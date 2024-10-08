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

            RowLayout {
                // spacing: 8
                Layout.fillHeight: true
                Layout.fillWidth: true

                Rectangle {
                    width: 24
                }

                // Text tools
                ColumnLayout {
                    width: 24
                    Layout.alignment: Qt.AlignTop
                    spacing: 8

                    Rectangle {
                        height: 2
                    }

                    Rectangle {
                        id: previewButton
                        width: parent.width
                        height: width
                        color: isActive ? colorVariables.primaryColor : colorVariables.backgroundColor2
                        radius: 4

                        property bool isActive: false

                        MouseArea {
                            anchors.fill: parent

                            onClicked: previewButton.isActive = !previewButton.isActive
                        }
                    }

                    Rectangle {
                        id: insertLineButton
                        width: parent.width
                        height: width
                        color: colorVariables.backgroundColor2
                        radius: 4

                        Text {
                            anchors.centerIn: parent
                            text: "-"
                            color: colorVariables.light
                        }

                        MouseArea {
                            anchors.fill: parent

                            onClicked: {
                                textArea.insert(textArea.cursorPosition, "\n---\n")
                            }
                        }
                    }

                    Rectangle {
                        id: insertBoldButton
                        width: parent.width
                        height: width
                        color: colorVariables.backgroundColor2
                        radius: 4

                        Text {
                            anchors.centerIn: parent
                            text: "B"
                            color: colorVariables.light
                        }

                        MouseArea {
                            anchors.fill: parent

                            onClicked: {
                                textArea.insert(textArea.selectionStart, "**")
                                textArea.insert(textArea.cursorPosition, "**")
                            }
                        }
                    }

                    Rectangle {
                        id: insertHeaderButton
                        width: parent.width
                        height: width
                        color: colorVariables.backgroundColor2
                        radius: 4

                        Text {
                            anchors.centerIn: parent
                            text: "H1"
                            color: colorVariables.light
                        }

                        MouseArea {
                            anchors.fill: parent

                            onClicked: {
                                textArea.insert(textArea.selectionStart, "# ")
                                textArea.insert(textArea.cursorPosition, "\n\n")
                            }
                        }
                    }
                }

                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    rightPadding: 32

                    TextArea {
                        id: textArea
                        anchors.topMargin: 32
                        text: typographyVariables.multylinePlaceholder
                        wrapMode: "WordWrap"
                        font.pixelSize: 18
                        textFormat: previewButton.isActive ? "MarkdownText" : "PlainText"

                        selectionColor: colorVariables.backgroundColor3
                        selectedTextColor: colorVariables.light

                        // onTextChanged: previewButton.isActive = false
                    }
                }
            }
    }
}
