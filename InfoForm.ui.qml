import QtQuick 2.4

Item {
    id: idinfo
    width: 400
    height: 400
    property alias quitter: quitter
    property alias mouseArea: mouseArea

    Rectangle {
        id: rectangle
        color: "#9fe5f2"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            x: 292
            y: 16
            width: 90
            height: 40
            color: "#ffffff"

            MouseArea {
                id: quitter
                anchors.fill: parent
            }
        }
    }
}
