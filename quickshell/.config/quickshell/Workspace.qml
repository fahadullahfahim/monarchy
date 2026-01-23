import QtQuick 6.0
import Quickshell.Hyprland

Rectangle{
    id: box
    color: "blue"
    height: 30
    width: 500

    Grid{
        columns: 10
        spacing: 4
        Repeater{
            model: Hyprland.workspaces
            Rectangle{
                id:inBox
                width:20
                height:20
                radius:4
                color: "black"
                Text{
                    text:modelData.name
                    color:"white"
                    anchors.centerIn:parent
                }
            }
        }
    }
}