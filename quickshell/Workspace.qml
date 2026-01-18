import QtQuick 6.0
import Quickshell.Hyprland
Item{
    id: root
    width:1920;height:100
    Component {
        id: myDelegate
        Rectangle{
            id: box
            height:20
            width: 50
            Text{
                id: txt 
                text: "box.name"
                font.pointSize:8
            }
        }
    }
    ListView{
        model: Hyprland.workspaces
        delegate: myDelegate
        anchors.fill: parent
        orientation: ListView.Horizontal
    }
}
