#include "TimerBackend.h"

TimerBackend::TimerBackend(QObject *parent) : QObject(parent) {
    m_timer.setInterval(500);
    connect(&m_timer, &QTimer::timeout, this, [this]() {
        m_seconds++;
        emit secondsChanged();
    });
}

void TimerBackend::timer() {
    if (!m_running) {
        m_timer.start();
        m_running = true;
    } else {
        m_timer.stop();
        m_running = false;
    }
}

void TimerBackend::reset() {
    m_timer.stop();
    m_seconds = 0;
    m_running = false;
    emit secondsChanged();
}
