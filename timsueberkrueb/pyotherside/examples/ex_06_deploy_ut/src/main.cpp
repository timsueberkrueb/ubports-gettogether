#include <QGuiApplication>
#include <QtQml/QQmlApplicationEngine>

int main(int argc, char* argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.addPluginPath("lib/arm-linux-gnueabihf");
    engine.load(QUrl(QLatin1String("qrc:///Main.qml")));
    return app.exec();
}
