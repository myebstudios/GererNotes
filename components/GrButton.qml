import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"

Rectangle {
    id: root
    implicitWidth: row.width + 24
    implicitHeight: 36
    // padding: 8

    // Variables
    ColorVariables {
        id: colorVariables
    }
    TypographyVariables {
        id: typographyVariables
    }

    property string text: "Click Me"
    property string iconSource: "../assets/plus.png"

    color: colorVariables.primaryColor
    radius: 4

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

    MouseArea {
        id: mouseArea
        anchors.fill: parent

        cursorShape: Qt.PointingHandCursor
    }
}
