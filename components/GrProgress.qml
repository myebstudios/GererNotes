import QtQuick

Rectangle {
    width: 350
    height: 6
    radius: 16
    color: "#212226"
    property int value: 30

    Rectangle {
        id: indicator
        color: "#D77744"
        width: (parent.width/100)*value
        height: parent.height
        radius: parent.radius
    }
}
