import QtQuick
import QtQuick.Controls
// import "../components/GrButton.qml"
// import "../styles/AppStyles.qml"

Rectangle {
    width: 640
    height: 480
    color: AppStyles.primaryColor

    Button {
        text: "click Me"
        anchors.centerIn: parent
    }
}
