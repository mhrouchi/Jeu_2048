import QtQuick 2.4

Item {
    id: idlose
    width: 400
    height: 400
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 270
            y: 30
            width: 100
            height: 50
            color: "#f47979"

            MouseArea {
                id: mouseArea
                anchors.fill: parent

                Text {
                    id: text1
                    text: qsTr("Fermer")
                    font.italic: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 19
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 25
            y: 126
            width: 380
            height: 60
            color: "#f4d378"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text2
                text: qsTr("You lose!!")
                font.italic: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 19
            }
        }
    }
}
