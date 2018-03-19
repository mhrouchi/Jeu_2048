#ifndef TABLEAU_BORD_H
#define TABLEAU_BORD_H

#include <QObject>

class Tableau_Bord : public QObject
{
    Q_OBJECT
public:
    explicit Tableau_Bord(QObject *parent = nullptr);

signals:

public slots:
};

#endif // TABLEAU_BORD_H