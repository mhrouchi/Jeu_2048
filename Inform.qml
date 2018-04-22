import QtQuick 2.4
import QtQuick.Window 2.0

InformForm {
    id:information
    quit.onClicked:
    {
        information.destroy();
        form1visible = true;
    }
    width:400
    height:550
}
