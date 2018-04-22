//interface affiche "you win" lorsque l'utilisateur atteint "2048"
import QtQuick 2.4

Item {
    id: idwin
    width: 85*managerjeu.Size+40
    height: 120*managerjeu.Size+50
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#f0fafc"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 292
            y: 8
            width: 100
            height: 50
            color: "#f0fafc"
//Fermer la fenetre
            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Image {
                    id: image1
                    anchors.fill: parent
                    source: "close.png"
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 0
            width: 85*managerjeu.Size+40
            height: 120*managerjeu.Size+50
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 62

            Image {
                id: image
                anchors.fill: parent
                source: "you win.gif"
            }
        }
    }
}
