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
            width: 5+txt.width
            color: "lightsteelblue"
            Text{
                id: txt 
                text: modelData.name+" focused "+modelData.focused
                font.pointSize:8
            }
        }
    }
    ListView{
        model: Hyprland.workspaces
        delegate: myDelegate
        anchors.fill: parent
        orientation: ListView.Horizontal
        spacing: 8
    }
}
