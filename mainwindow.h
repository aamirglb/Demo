#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class QWidget;
class QTimer;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

public slots:
    void timerHandler();

private:
    Ui::MainWindow *ui;
    QWidget *map;
    QTimer *timer;

    uint32_t ticks100ms {};
};

#endif // MAINWINDOW_H
