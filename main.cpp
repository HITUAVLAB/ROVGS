/**************************************************************************************
 * This file is part of ROVGS
 *
 * Copyright 2018 Duanshiqi <815832177@qq.com>(Harbin Institute of Technology at Weihai)
 *
 * ROVGS is free software: you can redistribute it and/or modify it under the terms of
 * the GNU General Public License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your opption) any later version.
 *
 * ROVGS is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABLIITY of FITNESS FOR A PARTICULAR
 * PURPOSE. See the GNU General Public License for more details.
 *
 *You should have received a copy of the GNU General Public License along with ROVGS.
 *If not, see <http://www.gnu.org/licenses/>.
 *
 *ACKNOWLEDGEMENT : This project is fully referenced to the tum_ardrone project, the
 *github repository page of tum_ardrone is <https://github.com/tum-vision/tum_ardrone.git>
 *I would like to extend my sincere appreciation to the developers of the tum_ardrone.
 **************************************************************************************/

#include "rov_groundstation.h"
#include "gui.h"
#include "src/robotthread.h"
#include "src/pingthread.h"
#include "src/joystick/joystick.h"
#include <iostream>

#include <QtGui>
#include <QApplication>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlFileSelector>



int main(int argc, char *argv[])
{
    std::cout << "Starting the ROV groundstation" << std::endl;



    //Create a RobotThread object for running the robot control and status monitor thread
    RobotThread r;
    PingThread  p;

    //Set up the UI
    QApplication a(argc, argv);

    GUIView view;

    JoystickData d;
    ROV_groundstation w;

    qmlRegisterType<JoystickData>("Joystick.Control.Data",1,0,"ControlData");

    view.setUpView(&w);
    view.connect(view.engine(), &QQmlEngine::quit, &w, &QCoreApplication::quit);
    new QQmlFileSelector(view.engine(), &view);

    view.setSource(QUrl("qrc:///dialcontrol.qml"));
    if (view.status() == QQuickView::Error)
        return -1;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.rootContext()->setContextProperty("cd",&d);
    view.show();

    w.setWindowTitle("ROV Ground Station");

    //make them communicate with each other
    r.gui = &w;
    w.robotThread = &r;
    p.gui = &w;
    w.pingThread  = &p;



    view.robotThread = &r;
    view.pingThread  = &p;

    //start the thread
    r.startSystem();
    p.startSystem();

    w.show();

    //Wait until windows closed
    int ec = a.exec();

    //Stop the system
    r.stopSystem();
    p.stopSystem();

    return ec;
}