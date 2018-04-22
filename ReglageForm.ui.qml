/* interface donne à l'utilisateur accès à l'utilisateur pour choisir
la taille et le mode du jeu */
import QtQuick 2.4

Item {
    id: reglageid
    transformOrigin: Item.Center
    antialiasing: false
    smooth: true
    property alias grillex7: grillex7
    property alias grillex6: grillex6
    property alias grillex5: grillex5
    property alias grillex4: grillex4
    width: 400
    height: 550
    property alias pedago: pedago
    property alias normale: normale
    property alias quitter: quitter





    Rectangle {
        id: rectangle4
        color: "#00000000"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        clip: false

        Rectangle {
            id: rectangle3
            x: 213
            width: 85
            height: 75
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 138
            anchors.horizontalCenterOffset: 60
            anchors.horizontalCenter: parent.horizontalCenter
            //choix 5*5
            MouseArea {
                id: grillex5
                anchors.fill: parent
            }

            Image {
                id: image
                anchors.fill: parent
                source: "5_number_3827.png"
            }
        }

        Rectangle {
            id: rectangle2
            x: 98
            width: 85
            height: 75
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 224
            anchors.horizontalCenterOffset: -60
            anchors.horizontalCenter: parent.horizontalCenter
            //choix 6*6
            MouseArea {
                id: grillex6
                anchors.fill: parent
            }

            Image {
                id: image1
                anchors.fill: parent
                source: "Numbers-6-Black-icon.png"
            }
        }

        Rectangle {
            id: rectangle1
            x: 214
            width: 85
            height: 75
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 224
            anchors.horizontalCenterOffset: 60
            anchors.horizontalCenter: parent.horizontalCenter
            //choix 7*7
            MouseArea {
                id: grillex7
                anchors.fill: parent
            }

            Image {
                id: image2
                anchors.fill: parent
                source: "Numbers-7-Black-icon.png"
            }
        }

        Rectangle {
            id: rectangle
            x: 98
            width: 85
            height: 75
            color: "#00000000"
            anchors.top: parent.top
            anchors.topMargin: 138
            anchors.horizontalCenterOffset: -60
            anchors.horizontalCenter: parent.horizontalCenter
            //choix 4*4
            MouseArea {
                id: grillex4
                anchors.fill: parent
            }

            Image {
                id: image3
                anchors.fill: parent
                source: "4number_4_3829.png"
            }
        }

        Rectangle {
            id: rectangle5
            width: 90
            height: 110
            color: "#00000000"
            anchors.horizontalCenter: parent.horizontalCenter
            //fermer la fenetre
            MouseArea {
                id: quitter
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent

                Image {
                    id: image4
                    x: 8
                    width: 100
                    height: 70
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    anchors.top: parent.top
                    anchors.bottomMargin: 32
                    source: "close.png"
                }
            }
        }

        Rectangle {
            id: rectangle6
            x: 207
            y: 355
            width: 178
            height: 86
            color: "#5066a2"
            radius: 21
            anchors.horizontalCenterOffset: 95
            anchors.horizontalCenter: parent.horizontalCenter
            border.color: "#ebdddd"
            border.width: 5
            //choix du mode pédagogique du jeu
            Text {
                id: text2
                text: qsTr("Pedagogique")
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                font.pixelSize: 25

                MouseArea {
                    id: pedago
                    anchors.fill: parent
                }
            }
        }

        Rectangle {
            id: rectangle7
            x: 14
            y: 355
            width: 176
            height: 86
            color: "#e62727"
            radius: 21
            anchors.horizontalCenterOffset: -95
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 5
            border.color: "#f4f0f4"

            Text {
                id: text1
                text: qsTr("Normale")
                fontSizeMode: Text.Fit
                font.weight: Font.Light
                font.bold: true
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 25
                //choix du mode normale du jeu
                MouseArea {
                    id: normale
                    anchors.fill: parent
                }
            }
        }

        Text {
            id: text3
            x: 136
            text: qsTr("Taille Grille")
            anchors.top: parent.top
            anchors.topMargin: 95
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }

        Text {
            id: text4
            x: 175
            width: 51
            height: 26
            text: qsTr("Mode Jeu")
            anchors.top: parent.top
            anchors.topMargin: 319
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 24
        }
    }

    Image {
        id: image5
        z: -1
        anchors.fill: parent
        source: "background.jpg"
    }
}
