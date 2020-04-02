#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "ui_map.h"

#include <QTimer>
#include <QTime>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    map = new QWidget;
    Ui::Map *mapView = new Ui::Map;
    mapView->setupUi(map);

    connect(ui->actionMap, &QAction::triggered, map, &QWidget::show);

    timer = new QTimer;
    // 10 hz timer handler
    timer->setInterval(100);
    connect(timer, &QTimer::timeout, this, &MainWindow::timerHandler);
    timer->start();
}

void MainWindow::timerHandler()
{
    ++ticks100ms;

    QTime t(0, 0);
    t = t.addMSecs(static_cast<int32_t>(ticks100ms * 100));
    ui->uptimeLabel->setText(t.toString("hh:mm:ss.z"));
}

MainWindow::~MainWindow()
{
    delete ui;
}
