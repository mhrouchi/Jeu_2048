import QtQuick 2.4

Item {
    id: idwin
    width: 400
    height: 400
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#e3e0e0"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 270
            y: 30
            width: 100
            height: 50
            color: "#f87979"

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Text {
                    id: text1
                    text: qsTr("Fermer")
                    font.italic: true
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 19
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 112
            y: 168
            width: 380
            height: 60
            color: "#b1beee"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text2
                text: qsTr("You win! Congratulations!!")
                font.italic: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 19
            }
        }
    }
}
