import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 350
    height: 600

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Rectangle {
        id: rectangle
        color: "#c4e7e9"
        anchors.fill: parent

        Rectangle {
            id: newGame
            color: "#eb5483"
            anchors.top: parent.top
            anchors.topMargin: 138
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 371
            anchors.left: parent.left
            anchors.leftMargin: 250
            anchors.right: parent.right
            anchors.rightMargin: 24

            Text {
                id: text1
                text: qsTr("New")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                }
            }
        }

        Grid {
            id: grid
            width: 300
            height: 300
            anchors.verticalCenterOffset: 75
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            rows: 4
            columns: 4
            Repeater
            {
                anchors.fill: parent
                        model: 16
                        delegate: Rectangle
                        {
                            color: "#CECBC3"
                            width: 75
                            height: 75
                            border.width: 4
                            border.color:"#8F8B83"

                            Text
                            {
                                text: index
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignHCenter
                                anchors.fill: parent
                            }
                        }
            }
        }
    }
}
