import QtQuick 2.4
import QtQuick.Window 2.0

ReglageForm {
    id:reglageid
    quitter.onClicked: {
        reglageid.destroy();
        form1visible = true;

}

    grillex7.onClicked: {
        managerjeu.setSize(7);
        managerjeu.init_grille();
}
    grillex6.onClicked: {
        managerjeu.setSize(6);
        managerjeu.init_grille();
    }
    grillex5.onClicked: {
        managerjeu.setSize(5);
        managerjeu.init_grille();
    }
    grillex4.onClicked: {
        managerjeu.setSize(4);
        managerjeu.init_grille();
    }


}
