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
            x: 155
            y: 62
            width: 70
            height: 63
            color: "#ffffff"

            MouseArea {
                id: mouseArea
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }
    }
}
