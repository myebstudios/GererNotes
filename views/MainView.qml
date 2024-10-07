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
            color: colorVariables.backgroundColor2
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
                columns: 3
                columnSpacing: 16
                rowSpacing: 16
                width: scrollView.width - (scrollView.rightPadding*2)

                Rectangle {
                    color: "transparent"
                    anchors.fill: parent
                }

                Repeater {
                    model: 20
                    GrNote {
                        title: "Note " + index
                    }
                }
            }
        }
    }
}
