import QtQuick 2.4

LoseForm {
    id:idlose
    mouseArea.onClicked: {
        idlose.destroy();
        form1visible = true;
}
    width:85*managerjeu.Size+40
    height:120*managerjeu.Size+50
}
