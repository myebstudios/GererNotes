import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("GererNotes")

    ListView {
            id: notesList
            anchors.fill: parent
            delegate: Text {
            text: modelData
            }
        }

    RowLayout {
            width: parent.width
            height: 30

            anchors.bottom: parent.bottom

            TextField {
                id: noteInput
                Layout.fillWidth: true
            }

            Button {
                text: "Add"
                onClicked: {
                    gererNotes.add_note(noteInput.text)
                    noteInput.text = ""
                }
        }
    }

    Connections {
        target: gererNotes
        
        function onNotesChanged(notes) {
            console.log("Notes:", notes)
            notesList.model = notes
        }
    }

    Component.onCompleted: {
        console.log("GererNotes is available:", gererNotes)
        console.log("Notes:", gererNotes.notes)
        notesList.model = gererNotes.notes
    }
}
