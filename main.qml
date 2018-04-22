import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 85*managerjeu.Size+40
    height: 120*managerjeu.Size+50
    title: qsTr("Jeu 2048")
    property bool form1visible: true
    property bool modepedagogique:true;




    Page1Form {
        id:gamemanager
        fermer.onClicked: {         //commande pour quitter le jeu
            Qt.quit()

}
        gamenewbutt.onClicked: {            //commande pour recommencer le jeu
            managerjeu.init_grille();


}
        //Retour d'un pas en arriere
            retour.onClicked:
            {
                managerjeu.retour();
                console.log("Retour1");
            }
            //gestion des mouvements à l'aide des touches
            Keys.onPressed:
            {
                switch (event.key)
                {
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
                if (managerjeu.iflose()===true)         //verifier si l'utilisateur perds après chaque mouvement
                {
                    form1visible = false;
                    var component3 = Qt.createComponent("Lose.qml");
                    console.log("Component Status:", component3.status, component3.errorString());
                    var window3 = component3.createObject(gamemanager, {"x": 0, "y": 0});
                    managerjeu.init_grille();
                }

                if (managerjeu.ifwin()===true)   //verifier si l'utilisateur gagne
                {
                    form1visible = false;
                    var component1 = Qt.createComponent("Win.qml");
                    console.log("Component Status:", component1.status, component1.errorString());
                    var window1 = component1.createObject(gamemanager, {"x": 0, "y": 0});
                    managerjeu.init_grille();
                }

            }
            info.onClicked:  //commande du bouton infos
            {
                form1visible = false;
                var component2 = Qt.createComponent("Inform.qml");
                console.log("Component Status:", component2.status, component2.errorString());
                var window2 = component2.createObject(gamemanager, {"x": 0, "y": 0});
            }
            reglage.onClicked: {        //commande du bouton paramètres
                form1visible = false;
                var component = Qt.createComponent("Reglage.qml");
                console.log("Component Status:", component.status, component.errorString());
                var window = component.createObject(gamemanager, {"x": 0, "y": 0});}

            }

}
