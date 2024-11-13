import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../variables"
import "../components"
import "../views"

Page {
    id: name
    anchors.fill: parent
    rightPadding: 32
    leftPadding: 32
    topPadding: 32

    property var gerernotes

    background: Rectangle {
        color: "transparent"
    }

    header: RowLayout {
        ColumnLayout {
            Text {
                text: qsTr("Notes")
                Layout.fillWidth: true
            }
        }

        GrButton {

        }
    }

    // Component.onCompleted: {
    //     console.log("GererNotes is available:", gerernotes)
    //     console.log("Notes:", gerernotes.notes)
    // }
}
