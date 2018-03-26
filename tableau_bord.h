#ifndef TABLEAU_BORD_H
#define TABLEAU_BORD_H

#include <QObject>

class Tableau_Bord : public QObject
{
    Q_OBJECT
public:
    explicit Tableau_Bord(QObject *parent = nullptr);
    Q_INVOKABLE void right();
    Q_INVOKABLE void left();
    Q_INVOKABLE void down();
    Q_INVOKABLE void up();
    Q_INVOKABLE void NewGame();

signals:

public slots:
};

#endif // TABLEAU_BORD_H
