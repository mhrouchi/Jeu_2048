import QtQuick 2.4

Item {
    id: idlose
    width: 85*managerjeu.Size+40
    height: 120*managerjeu.Size+50
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 325
            y: 8
            width: 67
            height: 50
            color: "#ffffff"

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Image {
                    id: image
                    anchors.fill: parent
                    source: "close.png"
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 172
            width: 85*managerjeu.Size+40
            height: 120*managerjeu.Size+50
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 62

            Image {
                id: image1
                anchors.fill: parent
                source: "You_lose.png"
            }
        }
    }
}
