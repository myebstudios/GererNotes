import QtQuick
import QtQuick.Controls.Fusion
import QtQuick.Window
import QtQuick.Layouts
import "./variables"
import "./components"
import "./views"

ApplicationWindow {
    id: root

    // Variables
    AppVariables {
        id: appVariables
    }
    ColorVariables {
        id: colorVariables
    }

    visible: true
    width: appVariables.appWidth
    height: appVariables.appHeight
    title: appVariables.appName
    color: colorVariables.backgroundColor1

    SplashView {
        visible: true
    }

    StackLayout {
        anchors.fill: parent
        currentIndex: 0

        EmptyListView {}
        EditNoteView {}
    }
}
