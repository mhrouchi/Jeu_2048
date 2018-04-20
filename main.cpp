#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Manager.h"

#include <QtQml>
#include<iostream>

using namespace std;
int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    Manager Mygame;
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("managerjeu", &Mygame);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec(); //hrouchi
}
