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
            x: 107
            y: 41
            width: 200
            height: 200
            color: "#ffffff"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }
        }
    }
}
