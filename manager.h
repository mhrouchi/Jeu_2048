#ifndef MANAGER_H
#define MANAGER_H

#include <QObject>

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



    Q_INVOKABLE void init_grille();
    Q_INVOKABLE bool ifwin();
    Q_INVOKABLE bool iflose();
    Q_INVOKABLE void Move_left();
    Q_INVOKABLE void Move_right();
    Q_INVOKABLE void Move_down();
    Q_INVOKABLE void Move_up();
    Q_INVOKABLE  int setSize(int v);

    void Init_case();

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

};

#endif // MANAGER_H
