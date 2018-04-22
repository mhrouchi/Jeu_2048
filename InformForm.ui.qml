//les informations liées au jeu
import QtQuick 2.4

Item {
    id: information
    width:85*managerjeu.Size+40
    height:120*managerjeu.Size+50
    property alias text9: text9
    property alias text8: text8
    property alias text7: text7
    property alias text6: text6
    property alias text5: text5
    property alias text4: text4
    property alias text3: text3
    property alias text2: text2
    property alias quit: quit

    Rectangle {
        id: rectangle
        color: "#9ecdef"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 305
            width: 87
            height: 41
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8

            MouseArea {
                id: quit
                anchors.fill: parent

                Text {
                    id: text1
                    color: "#c50808"
                    text: qsTr("Quitter")
                    font.bold: true
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 16
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 15
            width:85*managerjeu.Size+40
            height:120*managerjeu.Size+50-58

            color: "#ffffff"
            anchors.horizontalCenterOffset: 0
            anchors.top: parent.top
            anchors.topMargin: 58
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text9
                x: 154
                text: qsTr("ECL 2017-2018")
                anchors.top: parent.top
                anchors.topMargin: 429
                anchors.horizontalCenterOffset: 16
                anchors.horizontalCenter: parent.horizontalCenter
                font.italic: true
                font.family: "Arial"
                font.pixelSize: 16
            }

            Text {
                id: text8
                x: 133
                color: "#153bfc"
                text: qsTr("©")
                anchors.top: parent.top
                anchors.topMargin: 424
                anchors.horizontalCenterOffset: -56
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 24
            }

            Text {
                id: text7
                x: 83
                y: 192
                color: "#ef0713"
                text: qsTr("M. DERRODE Stéphane")
                font.bold: true
                font.family: "Arial"
                font.pixelSize: 19
            }

            Text {
                id: text6
                x: 83
                y: 158
                color: "#ef0713"
                text: qsTr("M. DELLANDREA Emmanuel")
                font.bold: true
                font.family: "Arial"
                font.pixelSize: 19
            }

            Text {
                id: text5
                x: 21
                y: 118
                text: qsTr("Encadré par:")
                font.wordSpacing: -3
                font.bold: true
                font.family: "Verdana"
                font.pixelSize: 24
            }

            Text {
                id: text4
                x: 83
                y: 86
                color: "#ef0713"
                text: qsTr("HROUCHI Mohammed")
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 18
            }

            Text {
                id: text3
                x: 83
                y: 58
                color: "#ef0713"
                text: qsTr("AISSI Khalid")
                font.bold: true
                font.family: "Arial"
                font.pixelSize: 19
            }

            Text {
                id: text2
                x: 21
                y: 14
                text: qsTr("Travail réalisé par:")
                font.wordSpacing: -3
                font.bold: true
                font.capitalization: Font.MixedCase
                font.family: "Verdana"
                font.pixelSize: 25
            }

            Rectangle {
                id: rectangle3
                x: 140
                width: 166
                height: 198
                color: "#ffffff"
                anchors.top: parent.top
                anchors.topMargin: 225
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: image
                    anchors.fill: parent
                    source: "centrale.jpg"
                }
            }
        }
    }
}
