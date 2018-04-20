import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.calendar 1.0

Item {
    id: gamemanager
    width: 450
    height: 550
    property alias retour: retour
    property alias info: info
    property alias reglage: reglage

    Rectangle {
        id: rec
        height: 700
        color: "#eddd89"
        anchors.fill: parent

        Rectangle {
            id: rectanglegrid
            width: 350
            height: 350
            color: "#f4953d"
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.leftMargin: 14
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
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
                        width: 300/managerjeu.Size;
                        height: 300/managerjeu.Size;
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
            x: 108
            width: 165
            height: 45
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 93
            anchors.right: parent.right
            anchors.rightMargin: 177

            Text {
                id: score_zone
                color: "#e21d1d"
                text: managerjeu.Score
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                font.family: "Times New Roman"
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 17
            }
        }

        Rectangle {
            id: rectangle1
            x: 357
            width: 44
            height: 33
            color: "#a9f434"
            anchors.top: parent.top
            anchors.topMargin: 75
            anchors.right: parent.right
            anchors.rightMargin: 49
            transformOrigin: Item.Center

            MouseArea {
                id: info
                anchors.fill: parent
                visible:form1visible

            }
        }

        Rectangle {
            id: rectangle2
            x: 297
            width: 43
            height: 33
            color: "#e65e5e"
            anchors.right: parent.right
            anchors.rightMargin: 110
            anchors.top: parent.top
            anchors.topMargin: 75

            MouseArea {
                id: fermer
                anchors.rightMargin: 0
                anchors.fill: parent
                visible:form1visible

            }
        }

        Rectangle {
            id: rectangle3
            x: 328
            width: 44
            height: 34
            color: "#669de2"
            anchors.top: parent.top
            anchors.topMargin: 121
            anchors.right: parent.right
            anchors.rightMargin: 78

            MouseArea {
                id: reglage
                anchors.fill: parent
                visible:form1visible

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

