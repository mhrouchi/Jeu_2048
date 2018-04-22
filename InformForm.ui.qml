import QtQuick 2.4

Item {
    id: information
    width:85*managerjeu.Size+20
    height:120*managerjeu.Size+30
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
            y: 8
            width: 87
            height: 41
            color: "#ffffff"

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
            width: 85*managerjeu.Size+20
            height: 120*managerjeu.Size+30
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 53
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text {
                id: text9
                x: 154
                y: 306
                text: qsTr("ECL 2017-2018")
                anchors.right: parent.right
                anchors.rightMargin: 133
                font.italic: true
                font.family: "Arial"
                font.pixelSize: 16
            }

            Text {
                id: text8
                x: 133
                y: 302
                color: "#153bfc"
                text: qsTr("©")
                anchors.left: parent.left
                anchors.leftMargin: 133
                font.family: "Arial"
                font.bold: true
                font.pixelSize: 24
            }

            Text {
                id: text7
                x: 83
                y: 196
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
        }
    }
}
