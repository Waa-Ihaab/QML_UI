////////////////////////////////////////////////////
//////////////////// KARI IHAB ////////////////////
//////////////////////////////////////////////////

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts



// Main window of the application
ApplicationWindow {
    id: win

    // Fixed window size (1024x768)
    width: 1024
    height: 768
    minimumWidth: 1024
    maximumWidth: 1024
    minimumHeight: 768
    maximumHeight: 768
    visible: true
    title: "QML UI"


    //Top menu bar
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            spacing: 10

            //Back button
            ToolButton {
                text: "Back"
                visible: stack.depth > 1
                onClicked: stack.pop()
            }

            Item { Layout.fillWidth: true }


            //Buttons (a, b, c)
            RowLayout {
                spacing: 8
                ToolButton { text: "a" }
                ToolButton { text: "b" }
                ToolButton { text: "c" }
            }

            Item { Layout.fillWidth: true }
        }
    }


    //StackView
    StackView {
        id: stack
        anchors.fill: parent
        initialItem: "MenuScreen.qml"
    }
}
