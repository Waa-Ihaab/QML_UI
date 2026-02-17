import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent

        GridLayout {
            anchors.centerIn: parent
            columns: 5
            rowSpacing: 20
            columnSpacing: 20

            Repeater {
                model: 10
                delegate: Button {
                    Layout.preferredWidth: 150
                    Layout.preferredHeight: 150

                    contentItem: Text {
                        text: (index + 1).toString()
                        font.pixelSize: 22
                        color: "black"

                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter

                        anchors.fill: parent
                    }

                    background: Rectangle {
                        color: "white"
                        border.color: "#cccccc"
                        radius: 6
                    }

                    onClicked: {
                        if (index === 0)
                            root.StackView.view.push("Screen1.qml")
                    }
                }
            }
        }
    }
}
