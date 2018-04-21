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
            x: 271
            y: 41
            width: 36
            height: 35
            color: "#ffffff"

            MouseArea {
                anchors.fill: parent

                Image {
                    id: image1
                    anchors.fill: parent
                    source: "../../fermer.JPG"
                }
            }
        }

        Image {
            id: image
            x: 0
            y: 160
            width: 392
            height: 180
            source: "../../infos.JPG"
        }
    }
}
