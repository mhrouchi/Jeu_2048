#ifndef MANAGER_H
#define MANAGER_H
#include <QObject>
#include<vector>

using namespace std;

class  Manager : public QObject
{
    Q_OBJECT
public:
    explicit Manager(QObject *parent = nullptr);
    ~Manager();


    Q_PROPERTY( QList<QString> grille READ readGrille() NOTIFY grilleChanged);
    QList<QString> readGrille();


    Q_PROPERTY(QString Score READ getScore() NOTIFY ScoreChanged);
    QString getScore();


    Q_PROPERTY(QList<QString> ListTileColor READ getColor() NOTIFY ColorChanged);
    QList<QString> getColor();

    Q_PROPERTY(int Size READ getSize() NOTIFY SizeChanged);
    int getSize();



    Q_INVOKABLE void init_grille();//initialiser le jeu
    Q_INVOKABLE bool ifwin(); //verifier si on gagne
    Q_INVOKABLE bool iflose(); // verifier si on perds
    Q_INVOKABLE void Move_left(); //mouvement à gauche
    Q_INVOKABLE void Move_right(); //mouvement à droite
    Q_INVOKABLE void Move_down();   //mouvement en bas
    Q_INVOKABLE void Move_up();   //mouvement en haut
    Q_INVOKABLE  int setSize(int v); //changer la taille
    Q_INVOKABLE void retour(); //effectuer un pas en arriere
    Q_INVOKABLE void supprimer();

    void Init_case(); // initialiser une case avec 2 ou 4

    static int size;
    static int max_tile;
    static int iScore;


signals:

    void grilleChanged();
    void ScoreChanged();
    void ColorChanged();

    void SizeChanged();

public slots:

private:
    int grilleSize;
    int** grille;
    QList<QString> ContentGrille;
    QList<QString> ColorGrille;
    vector<vector<vector<int>>> VectMatrices; //Vecteur pour stocker des matrices ou grilles


};

#endif // MANAGER_H
