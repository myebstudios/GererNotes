import QtQuick
import QtQuick.Controls.Fusion
import QtQuick.Layouts
import "./views"
import "./components"
import "./styles"

ApplicationWindow {
    visible: true
    width: 1024
    height: 680
    title: "Gerer Notes"
    color: "#161719"

    SplashView {
        id: splashView
        visible: false
    }

    StackView {
        anchors.fill: parent

        EmptyListView {
            anchors.centerIn: parent
        }
    }
}
