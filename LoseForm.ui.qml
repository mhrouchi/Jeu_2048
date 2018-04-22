//Interface affiche à l'utilisateur "you lose"
import QtQuick 2.4

Item {
    id: idlose
    width:400 //85*managerjeu.Size+40
    height:530// 120*managerjeu.Size+50
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent

        Rectangle {
            id: rectangle2
            // 85*managerjeu.Size+40
            // 120*managerjeu.Size+50
            color: "#00000000"
            anchors.topMargin: 120
            anchors.fill: parent

            Image {
                id: image1
                anchors.fill: parent
                source: "LoseGame.jpg"
            }
        }

        Rectangle {
            id: rectangle1
            x: 240
            width: 175
            height: 114
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            //Fermer la fenetre
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
    }
}
