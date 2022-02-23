import QtQuick
import Qt5Compat.GraphicalEffects

import ThemeEngine 1.0

Item {
    z: -1

    property string color: "#666"
    property alias radius: shadowarea.radius
    property bool filled: true

    Rectangle {
        id: shadowarea
        anchors.fill: parent

        visible: false
        color: parent.filled ? parent.color : "transparent"

        border.width: parent.filled ? 0 : 1
        border.color: parent.color
    }
    DropShadow {
        //anchors.fill: shadowarea
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 8

        source: shadowarea
        cached: true
        radius: 12.0
        //spread: 24
        //samples: 25 // (radius*2 + 1)
        color: parent.color
        horizontalOffset: 0
        verticalOffset: 0
    }
}