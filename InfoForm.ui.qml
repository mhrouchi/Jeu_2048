import QtQuick 2.4

Item {
    id: idinfo
    width: 400
    height: 400
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 349
            y: 15
            width: 70
            height: 70
            color: "#ffffff"
            anchors.right: parent.right
            anchors.rightMargin: 15

            MouseArea {
                anchors.fill: parent

                Image {
                    id: image1
                    anchors.fill: parent
                    source: "../../croix2.JPG"
                }
            }
        }

        Image {
            id: image
            y: 160
            height: 180
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.right: parent.right
            anchors.rightMargin: 15
            source: "../../infos.JPG"
        }
    }
}
