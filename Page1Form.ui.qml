import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.calendar 1.0

Item {
    id: gamemanager
    width:85*managerjeu.Size+40;
    height:120*managerjeu.Size+50;
    property alias fermer: fermer
    property alias gamenewbutt: gamenewbutt
    property alias retour: retour
    property alias info: info
    property alias reglage: reglage

    Rectangle {
        id: rec
        color: "#00000000"
        anchors.fill: parent

        Rectangle {
            id: rectanglegrid
            x: 10
            width:85*managerjeu.Size;
            height:85*managerjeu.Size;
            color: "#00000000"
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

            width: 49
            height: 40
            color: "#eaf0ed"
            anchors.left: parent.left
            anchors.leftMargin: 102
            anchors.top: parent.top
            anchors.topMargin: 8

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
            x: 236
            width: 50
            height: 50
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 64
            transformOrigin: Item.Center

            MouseArea {
                id: info
                anchors.fill: parent
                visible:form1visible

                Image {
                    id: image2
                    height: 50
                    anchors.fill: parent
                    source: "info.png"
                }

            }
        }

        Rectangle {
            id: rectangle2
            x: 292
            width: 50
            height: 50
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8

            MouseArea {
                id: fermer
                anchors.fill: parent
                visible:form1visible

                Image {
                    id: image1
                    height: 50
                    anchors.fill: parent
                    source: "close.png"
                }

            }
        }

        Rectangle {
            id: rectangle3
            x: 297
            width: 40
            height: 40
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 62
            anchors.right: parent.right
            anchors.rightMargin: 13

            MouseArea {
                id: reglage
                anchors.fill: parent
                visible:form1visible

            }

            Image {
                id: image
                width: 40
                height: 40
                anchors.fill: parent
                source: "setting.ico"
            }
        }

        Rectangle {
            id: rectangle4
            x: 241
            width: 55
            height: 45
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 109
            anchors.right: parent.right
            anchors.rightMargin: 89

            MouseArea {
                id: retour
                anchors.fill: parent

                Image {
                    id: image3
                    height: 50
                    anchors.topMargin: -7
                    anchors.fill: parent
                    source: "back_arrow_14447.png"
                }
            }
        }

        Rectangle {
            id: rectangle5
            x: 38
            y: 8
            width: 65
            height: 40
            color: "#ffffff"

            Label {
                id: label
                color: "#165997"
                text: qsTr("Score")
                anchors.rightMargin: 0
                anchors.fill: parent
                font.pointSize: 14
                font.underline: false
                font.italic: true
                opacity: 1
                font.capitalization: Font.MixedCase
                font.bold: true
                font.family: "Times New Roman"
                renderType: Text.QtRendering
                textFormat: Text.PlainText
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: newgame
            width: 55
            height: 55
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 99
            anchors.left: parent.left
            anchors.leftMargin: 66

            Image {
                id: image5
                width: 55
                height: 55
                anchors.fill: parent
                source: "newgame.ico"
            }

            MouseArea {
                id: gamenewbutt
                width: 50
                anchors.fill: parent
            }
        }




    }

    Image {
        id: image4
        anchors.fill: parent
        z: -1
        source: "background1.jpg"
    }
}

