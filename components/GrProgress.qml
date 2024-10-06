import QtQuick
import "../variables"

Rectangle {
    id: root

    // Variables
    ColorVariables {
        id: colorVariables
    }

    implicitWidth: 360
    implicitHeight: 6
    radius: 8
    color: colorVariables.backgroundColor2

    property int value: 0

    Rectangle {
        id: indicator
        width: (parent.width/100)*value
        height: parent.height
        radius: parent.radius
        color: colorVariables.primaryColor
    }
}
