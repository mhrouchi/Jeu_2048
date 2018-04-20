import QtQuick 2.4

LoseForm {
    id:idlose
    mouseArea.onClicked: {
        idlose.destroy();
        form1visible = true;
}
}
