import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "#f2f2f2"
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 18

        Label {
            text: "screen 1"
            font.pixelSize: 44
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        GroupBox {
            title: "GroupBox title"
            Layout.preferredWidth: 820
            Layout.preferredHeight: 360

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 22
                spacing: 16

                //Label/Field
                GridLayout {
                    columns: 2
                    columnSpacing: 24
                    rowSpacing: 14
                    Layout.fillWidth: true

                    //Field1
                    Label { text: "title1 (Label)"; Layout.alignment: Qt.AlignVCenter }
                    TextField {
                        placeholderText: "Field1 (LineEdit)"
                        text: "Field1"
                        Layout.fillWidth: true
                    }

                    //Field2
                    Label { text: "title2 (Label)"; Layout.alignment: Qt.AlignVCenter }
                    TextField {
                        placeholderText: "Field2 (LineEdit)"
                        text: "Field2"
                        Layout.fillWidth: true
                    }

                    //Spacer
                    Item { Layout.columnSpan: 2; Layout.preferredHeight: 6 }

                    //Btn1
                    Button {
                        text: "Btn1 (Button)"
                        Layout.columnSpan: 2
                        Layout.preferredWidth: 420
                        Layout.alignment: Qt.AlignHCenter
                    }

                    //Btn2
                    Button {
                        text: "Btn2 (Button)"
                        Layout.columnSpan: 2
                        Layout.preferredWidth: 420
                        Layout.alignment: Qt.AlignHCenter
                    }

                    //Field4
                    Label { text: "title4 (Label)"; Layout.alignment: Qt.AlignVCenter }
                    TextField {
                        placeholderText: "Field4 (LineEdit)"
                        text: "Field4"
                        Layout.fillWidth: true
                    }
                }
            }
        }
    }
}
