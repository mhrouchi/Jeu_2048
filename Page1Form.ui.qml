import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.calendar 1.0

Item {
    id: gamemanager
    width:85*managerjeu.Size+40;
    height:120*managerjeu.Size+50;
    property alias retour: retour
    property alias info: info
    property alias reglage: reglage

    Rectangle {
        id: rec
        color: "#eddd89"
        anchors.fill: parent

        Rectangle {
            id: rectanglegrid
            x: 10
            width:85*managerjeu.Size;
            height:85*managerjeu.Size;
            color: "#f4953d"
            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 1
            transformOrigin: Item.Center

            Grid {
                id: grid
                anchors.fill: parent

                opacity: 1
                clip: false
                visible:form1visible
                scale: 0.9
                transformOrigin: Item.Center
                rows: managerjeu.Size
                columns: managerjeu.Size

                spacing: 10

                Repeater {
                    anchors.fill: parent
                    model: managerjeu.Size*managerjeu.Size
                    delegate: Rectangle {
                        id:cases
                        width: 77.5;
                        height: 77.5;
                        radius: 5
                        color: managerjeu.ListTileColor[index];

                        Text{
                            id:remplissage
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Tahoma"
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 40
                            focus: true
                            text: managerjeu.grille[index]
                            /*visible : {
                            if (managerjeu.grille[index]!=='0')
                                  return true;
                                  else  return false;
                                 }
                          }*/
                        }
                    }
                }


            }

        }

        Rectangle {
            id: rectangle

            width: 165
            height: 45
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 80
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: score_zone
                color: "#e21d1d"
                text: managerjeu.Score
                anchors.fill: parent
                font.family: "Times New Roman"
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 17
            }
        }

        Rectangle {
            id: rectangle1
            x: 330
            y: 25
            width: 50
            height: 40
            color: "#a9f434"
            anchors.right: parent.right
            anchors.rightMargin: 20
            transformOrigin: Item.Center

            MouseArea {
                id: info
                anchors.fill: parent
                visible:form1visible

                Text {
                    id: text2
                    text: qsTr("Infos")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }

            }
        }

        Rectangle {
            id: rectangle2
            x: 265
            y: 25
            width: 50
            height: 40
            color: "#e65e5e"
            anchors.right: parent.right
            anchors.rightMargin: 85

            MouseArea {
                id: fermer
                anchors.fill: parent
                visible:form1visible

                Text {
                    id: text3
                    text: qsTr("Fermer")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }

            }
        }

        Rectangle {
            id: rectangle3
            x: 330
            y: 80
            width: 50
            height: 40
            color: "#669de2"
            anchors.right: parent.right
            anchors.rightMargin: 20

            MouseArea {
                id: reglage
                anchors.fill: parent
                visible:form1visible

                Text {
                    id: text4
                    text: qsTr("Reglage")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }

            }
        }

        Rectangle {
            id: rectangle4
            width: 80
            height: 40
            color: "#32c3e0"
            anchors.left: parent.left
            anchors.leftMargin: 28
            anchors.top: parent.top
            anchors.topMargin: 24

            MouseArea {
                id: retour
                anchors.fill: parent

                Text {
                    id: text1
                    color: "#000000"
                    text: qsTr("Retour")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 18
                }
            }
        }




    }
}

