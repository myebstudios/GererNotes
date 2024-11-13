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
        visible: false
    }

    StackLayout {
        anchors.fill: parent
        currentIndex: 0

        EmptyListView {}

        MainView {
            gerernotes: gererNotes
        }

        EditNoteView {}
    }

    Connections {
        target: gererNotes

        // function onNotesChange(notes) {
        //     console.log("Notes", notes)
        // }
    }

    // Component.onCompleted: {
    //     console.log("GererNotes is available:", gererNotes)
    //     console.log("Notes:", gererNotes.notes)
    // }
}
