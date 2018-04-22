import QtQuick 2.4
import QtQuick.Window 2.0

InformForm {
    id:information
    quit.onClicked:
    {
        information.destroy();
        form1visible = true;
    }
    width:85*managerjeu.Size+40
    height:120*managerjeu.Size+50
}
