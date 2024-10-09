import QtQuick

Item {
    // Typography
    property var smallFont: {
        "pixelSize": 8
    }
    property var captionFont: {
        "pixelSize": 12
    }
    property var bodyFont: {
        "pixelSize": 14
    }
    property var bodyStrongFont: {
        "pixelSize": 14,
        "bold": true,
        "weight": 600
    }
    property var subtitleFont: {
        "pixelSize": 20,
        "bold": true
    }
    property var titleFont: {
        "pixelSize": 28,
        "bold": true
    }
    property var titleLargeFont: {
        "pixelSize": 40,
        "bold": true
    }
    property var displayFontSize: {
        "pixelSize": 68,
        "bold": true
    }

    property string multylinePlaceholder: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat **cupidatat non proident**, sunt in culpa qui officia deserunt mollit anim id est laborum."
}
