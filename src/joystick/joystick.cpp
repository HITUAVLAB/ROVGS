// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Copyright Drew Noakes 2013-2016

#include "joystick.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>
#include <string>
#include <sstream>
#include "unistd.h"

Joystick::Joystick()
{
  //keepRunning = true;
  openPath("/dev/input/js0");

}

Joystick::Joystick(int joystickNumber)
{
  //keepRunning = true;
  std::stringstream sstm;
  sstm << "/dev/input/js" << joystickNumber;
  openPath(sstm.str());
}

Joystick::Joystick(std::string devicePath)
{
  //keepRunning = true;
  openPath(devicePath);
}

Joystick::Joystick(std::string devicePath, bool blocking)
{
  //keepRunning = true;
  openPath(devicePath, blocking);
}

void Joystick::openPath(std::string devicePath, bool blocking)
{
  // Open the device using either blocking or non-blocking
  _fd = open(devicePath.c_str(), blocking ? O_RDONLY : O_RDONLY | O_NONBLOCK);
}

bool Joystick::sample(JoystickEvent* event)
{
  int bytes = read(_fd, event, sizeof(*event)); 

  if (bytes == -1)
    return false;

  // NOTE if this condition is not met, we're probably out of sync and this
  // Joystick instance is likely unusable
  return bytes == sizeof(*event);
}

bool Joystick::isFound()
{
  return _fd >= 0;
}

bool Joystick::isAlive(){
  return fcntl(_fd, F_GETFL)>=0;
}

Joystick::~Joystick()
{
  std::cout << "destructing the JoystickThread class object and free the memory" << std::endl;
  close(_fd);
}

std::ostream& operator<<(std::ostream& os, const JoystickEvent& e)
{
  os << "type=" << static_cast<int>(e.type)
     << " number=" << static_cast<int>(e.number)
     << " value=" << static_cast<int>(e.value);
  return os;
}

void Joystick::startJoystickReading(){
  keepRunning = true;

  start();
}

void Joystick::stopJoystickReading(){
  keepRunning = false;

  join();
}


void Joystick::run(){
    std::cout << "Starting the joystick reading thread" << std::endl;

    //open the Joystick serial port

    while(!isFound() && keepRunning){
        std::cout << "Open joystick failed" << std::endl;
#if defined(Q_OS_WIN32)
#elif defined(Q_OS_LINUX)
        openPath("/dev/input/js1");
#endif
        sleep(1000);
    }

    std::cout << "Open joystick success" << std::endl;

    ROV_groundstation* gui = this->robotThread->gui;
    while(keepRunning){
        /*
         * TODO: detect whether the joystick is still alive or not, but fcntl()doesn't have such function, it can only
         * detect whether the fd is bad or not
        */
        //

        if(fcntl(_fd,F_GETFL) == -1){
            std::cout << "lost the joystick" << std::endl;
            close(_fd);
            openPath("/dev/input/js1");
            continue;
        }

        //Attempt to sample an event from the joystick
        JoystickEvent event;
        //this->robotThread->view->rootContext()->setContextProperty("joystickData",QVariant::fromValue(controlData));

        if(this->sample(&event)){
            if(event.isButton()){
                std::cout << "Button " << int(event.number) << " is " << (event.value == 0 ? "up" : "down" ) <<std::endl;
                if(event.value == 0)
                    gui->setJoystickButtons(event.number);
            }
            else if (event.isAxis()){
                //mavlink_msg_heartbeat_pack();
                //mavlink_msg_joystick_pack();
                gui->setJoystickAxis(event.number,event.value);
            }

        }
    }

}








