import QtQuick 2.4
import QtQuick.Window 2.0


WinForm {
    id:idwin
    mouseArea.onClicked: {
        idwin.destroy();
        form1visible = true;

}
}
