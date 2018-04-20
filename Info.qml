import QtQuick 2.4

InfoForm {
    id:idinfo
    mouseArea.onClicked: {
        idinfo.destroy();
        form1visible = true;
}
}
