import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"

Pane {
    id: root
    implicitWidth: row.width + (padding*3)
    implicitHeight: 36
    padding: 8

    // Variables
    ColorVariables {
        id: colorVariables
    }
    TypographyVariables {
        id: typographyVariables
    }

    property string text: "Click Me"
    property string iconSource: "../assets/plus.png"

    background: Rectangle {
        color: colorVariables.primaryColor
        radius: 4
    }

    RowLayout {
        id: row
        anchors.centerIn: parent
        spacing: 8

        Image {
            id: icon
            width: 20
            height: 20
            source: root.iconSource
        }

        Label {
            text: root.text
            color: colorVariables.backgroundColor1
            font: typographyVariables.bodyStrongFont
            Layout.alignment: Qt.AlignVCenter
        }
    }
}
