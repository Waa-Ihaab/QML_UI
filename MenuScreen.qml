import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "white"

        GridLayout {
            anchors.centerIn: parent
            columns: 5
            rowSpacing: 20
            columnSpacing: 20

            Repeater {
                model: 10
                delegate: Button {
                    text: (index + 1).toString()
                    Layout.preferredWidth: 150
                    Layout.preferredHeight: 150

                    onClicked: {
                        if (index === 0 && root.StackView.view)
                            root.StackView.view.push("Screen1.qml")
                    }
                }
            }
        }
    }
}
