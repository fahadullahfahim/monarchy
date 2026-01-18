import Quickshell
import QtQuick

PanelWindow {
    id: root
    anchors {
        bottom: true
        left:true
        right: true
    }
    implicitHeight: 30
    Workspace{
        anchors.left: parent.left
        anchors.leftMargin: 15
    }
}
