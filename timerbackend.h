#ifndef TIMERBACKEND_H
#define TIMERBACKEND_H

#include <QObject>
#include <QTimer>

class TimerBackend : public QObject {
    Q_OBJECT

public:
    explicit TimerBackend(QObject *parent = nullptr);

    Q_INVOKABLE void timer();
    Q_INVOKABLE void reset();

signals:
    void secondsChanged();

private:
    int m_seconds = 0;
    bool m_running = false;
    QTimer m_timer;
};

#endif
