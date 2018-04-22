import QtQuick 2.4
import QtQuick.Window 2.0

ReglageForm {
    id:reglageid
    width: 85*managerjeu.Size+40
    height: 120*managerjeu.Size+50
    pedago.onClicked: {
        modepedagogique=true;
        reglageid.destroy();
        form1visible = true;
}

    normale.onClicked: {
        modepedagogique=false;
        reglageid.destroy();
        form1visible = true;

}

    quitter.onClicked: {
        reglageid.destroy();
        form1visible = true;

}

    grillex7.onClicked: {
        managerjeu.setSize(7);
        managerjeu.init_grille();
        reglageid.destroy();
        form1visible = true;
     }
    grillex6.onClicked: {
        managerjeu.setSize(6);
        managerjeu.init_grille();
        reglageid.destroy();
        form1visible = true;
    }
    grillex5.onClicked: {
        managerjeu.setSize(5);
        managerjeu.init_grille();
        reglageid.destroy();
        form1visible = true;
    }
    grillex4.onClicked: {
        managerjeu.setSize(4);
        managerjeu.init_grille();
        reglageid.destroy();
        form1visible = true;
    }


}
