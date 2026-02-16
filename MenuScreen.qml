////////////////////////////////////////////////////
//////////////////// KARI IHAB ////////////////////
//////////////////////////////////////////////////

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

//Main menu screen
Item {
    anchors.fill: parent

    //Background color
    Rectangle {
        anchors.fill: parent
        color: "white"

        GridLayout {
            anchors.centerIn: parent
            columns: 5
            rowSpacing: 20
            columnSpacing: 20


            //10 buttons 1 to 10
            Repeater {
                model: 10
                delegate: Button {
                    text: (index + 1).toString()

                    //Square button size
                    Layout.preferredWidth: 150
                    Layout.preferredHeight: 150


                    //Navigation btn1 to open Screen1
                    onClicked: {
                        if (index === 0)  // bouton "1"
                            StackView.view.push(Qt.resolvedUrl("Screen1.qml"))
                    }
                }
            }
        }
    }
}
