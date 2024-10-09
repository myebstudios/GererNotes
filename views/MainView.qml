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
        height: 250

        background: Rectangle {
            color: colorVariables.backgroundColor1
        }
    }

    StackLayout {
        anchors.fill: parent

        ScrollView {
            id: scrollView
            rightPadding: 32
            leftPadding: 32

            GridLayout {
                id: gridLayout
                columns: 4
                columnSpacing: 16
                rowSpacing: 16
                width: scrollView.width - (scrollView.leftPadding + scrollView.rightPadding)

                onWidthChanged: {
                    if (width > 1280) {
                        gridLayout.columns = 5
                    }

                    if (width > 1080 && width < 1280) {
                        gridLayout.columns = 4
                    }

                    if (width < 1080 && width > 800) {
                        gridLayout.columns = 3
                    }

                    if (width < 800 && width > 500) {
                        gridLayout.columns = 2
                    }

                    if (width < 500) {
                        gridLayout.columns = 1
                    }
                }

                Repeater {
                    model: 32
                    GrNote {
                        title: "Note title " + index
                    }
                }

                Rectangle {
                    color: "transparent"
                    width: 16
                    height: width
                }
            }
        }
    }
}
