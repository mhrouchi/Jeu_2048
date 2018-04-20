import QtQuick 2.4

Item {
    id: idwin
    width: 400
    height: 400
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 133
            y: 29
            width: 135
            height: 139
            color: "#ffffff"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }
        }
    }
}
