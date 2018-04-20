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
    property alias text1: text1
    width: 400
    height: 550
    property alias quitter: quitter





    Rectangle {
        id: rectangle4
        color: "#eeb1b1"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        clip: false

        Rectangle {
            id: rectangle3
            x: 215
            y: 147
            width: 84
            height: 54
            color: "#ffd025"

            MouseArea {
                id: grillex5
                x: 0
                y: 0
                width: 84
                height: 55

                Text {
                    id: text2
                    x: 0
                    y: 0
                    width: 83
                    height: 52
                    text: qsTr("5 X 5")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 99
            y: 219
            width: 84
            height: 54
            color: "#82ffd6"

            MouseArea {
                id: grillex6
                anchors.fill: parent

                Text {
                    id: text3
                    x: 0
                    y: 0
                    width: 83
                    height: 52
                    text: qsTr("6 x 6")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 215
            y: 219
            width: 84
            height: 54
            color: "#e357ff"

            MouseArea {
                id: grillex7
                anchors.fill: parent

                Text {
                    id: text4
                    x: 0
                    y: 0
                    width: 83
                    height: 52
                    text: qsTr("7 x 7")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }
        }

        Rectangle {
            id: rectangle
            x: 100
            y: 147
            width: 83
            height: 54
            color: "#d333ff"

            MouseArea {
                id: grillex4
                anchors.fill: parent

                Text {
                    id: text1
                    x: 0
                    y: 0
                    width: 83
                    height: 52
                    text: qsTr("4 X 4")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 12
                }
            }
        }

        Rectangle {
            id: rectangle5
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 171
            anchors.left: parent.left
            anchors.leftMargin: 171
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 437
            anchors.top: parent.top
            anchors.topMargin: 66

            MouseArea {
                id: quitter
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }
    }
}
