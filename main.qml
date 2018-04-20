import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 350
    height: 600
    title: qsTr("Tabs")
    property bool form1visible: true



        Page1Form {
            id:gamemanager
            retour.onClicked:
            {
                managerjeu.retour();
                console.log("Retour1");
            }
            Keys.onPressed: {
                switch (event.key) {
                case Qt.Key_Up:
                  managerjeu.Move_up()
                    console.log("fleche haut") //vérification_signal_reçu
                  break;
                case Qt.Key_Down:
                  managerjeu.Move_down()
                  break;
                case Qt.Key_Left:
                  managerjeu.Move_left()
                  break;
                case Qt.Key_Right:
                  managerjeu.Move_right()
                  break;
                  }
               /* if (managerjeu.gameover()===true)
                jeuterminé.open();
                if (managerjeu.win()===true)
                    jeugangé.open();*/}
            info.onClicked: {
}
            reglage.onClicked: {
                form1visible = false;
                var component = Qt.createComponent("Reglage.qml");
                console.log("Component Status:", component.status, component.errorString());
                var window = component.createObject(gamemanager, {"x": 0, "y": 10});}

            }




    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
    }
}
