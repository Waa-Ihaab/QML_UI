#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "TimerBackend.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //timer calling qmlRegisterType
    qmlRegisterType<TimerBackend>("MyApp", 1, 0, "TimerBackend");

    engine.loadFromModule("folderQMT", "Main");

    if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();
}

