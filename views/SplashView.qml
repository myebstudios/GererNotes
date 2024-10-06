import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"
import "../components"

Window {
    id: root

    // Variables
    ColorVariables {
        id: colorVariables
    }

    width: 880
    height: 430
    flags: Qt.SplashScreen
    color: "transparent"

    // Bachground
    Rectangle {
        id: background
        anchors.fill: parent
        radius: 8
        color: colorVariables.backgroundColor1
        border.color: colorVariables.backgroundColor3
        border.width: 1
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 64

        Image {
            Layout.alignment: Qt.AlignHCenter
            id: logo
            source: "../assets/logo.png"
        }

        GrProgress {
            id: loadIndicator

            NumberAnimation on value {
                to: 100
                duration: 2000
                easing.type: Easing.InOutQuad
            }

            Timer {
                interval: 3000
                running: true
                repeat: false
                onTriggered: root.visible = false
            }
        }
    }
}
