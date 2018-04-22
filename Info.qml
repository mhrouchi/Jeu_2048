import QtQuick 2.4

InfoForm {
    id:idinfo
    quitter.onClicked:
    {
        idinfo.destroy();
        form1visible = true;
    }
}
