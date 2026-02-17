import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    anchors.fill: parent

    Rectangle {
            anchors.fill: parent
            color: "#f2f2f2"
        }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Label {
            text: "screen 1"
            font.pixelSize: 44
            font.bold: true
            Layout.alignment: Qt.AlignHCenter
        }

        GroupBox {
            title: "GroupBox title"
            Layout.preferredWidth: 700
            Layout.preferredHeight: 320
            Layout.alignment: Qt.AlignHCenter

            GridLayout {
                anchors.fill: parent
                anchors.margins: 25

                columns: 2
                columnSpacing: 40
                rowSpacing: 18

                //ROW1
                Label {
                    text: "title1 (Label)"
                    Layout.alignment: Qt.AlignHCenter
                }

                TextField {
                    text: "Field1 (LineEdit)"
                    Layout.preferredWidth: 250
                }

                //ROW2
                Label {
                    text: "title2 (Label)"
                    Layout.alignment: Qt.AlignHCenter
                }

                TextField {
                    text: "Field2 (LineEdit)"
                    Layout.preferredWidth: 250
                }

                //BTN1
                Button {

                    text: "Btn1 (Button)"
                    Layout.columnSpan: 2
                    Layout.preferredWidth: 280
                    Layout.alignment: Qt.AlignHCenter

                    background: Rectangle {
                        color: "#e6e6e6"
                        radius: 6
                        border.color: "#bbbbbb"
                    }
                }

                //BTN2
                Button {
                    text: "Btn2 (Button)"
                    Layout.columnSpan: 2
                    Layout.preferredWidth: 280
                    Layout.alignment: Qt.AlignHCenter

                    background: Rectangle {
                        color: "#e6e6e6"
                        radius: 6
                        border.color: "#bbbbbb"
                    }
                }

                Label {
                    text: "title4 (Label)"
                    Layout.alignment: Qt.AlignHCenter
                }

                //ROW4
                TextField {
                    text: "Field4 (LineEdit)"
                    Layout.preferredWidth: 250
                }
            }
        }
    }
}
