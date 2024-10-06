import QtQuick
import QtQuick.Controls
import "../components"

Window {
    width: 880
    height: 430
    color: "transparent"
    flags: Qt.SplashScreen

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#161719"
        radius: 8
        border.width: 2
        border.color: "#212226"
    }

    Column {
        anchors.centerIn: parent
        spacing: 64

        Image {
            source: "../assets/logo.png"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        GrProgress {
            value: 50
        }
    }
}
