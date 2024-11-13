import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"

Rectangle {
    id: root

    ColorVariables {
        id: colorVariables
    }

    TypographyVariables {
        id: typographyVariables
    }

    width: contentLayout.width + 24
    height: contentLayout.height + 18
    radius: 4
    color: colorVariables.primaryColor

    property string text: "New note"
    property string iconSource: "../assets/plus.png"
    signal clicked()

    RowLayout {
        id: contentLayout
        anchors.centerIn: parent

        Image {
            id: icon
            source: root.iconSource
        }

        Text {
            text: root.text
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: "PointingHandCursor"
        onClicked: root.clicked()
    }
}
