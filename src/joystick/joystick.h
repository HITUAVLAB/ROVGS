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

#ifndef __JOYSTICK_H__
#define __JOYSTICK_H__

#include <QObject>

#include <string>
#include <iostream>

//thread related library
#include <cvd/thread.h>
#include "../robotthread.h"
#include "../../rov_groundstation.h"

//gui head file
#include "../../gui.h"

#include "joystickdata.h"

#include <QQmlContext>
#include <QQuickItem>

//mavlink message header and the mavlink message dealer
#include "mavlink.h"
//#include "src/MAVLinkDecoder/mavlinkmessagedealer.h"


#define JS_EVENT_BUTTON 0x01 // button pressed/released
#define JS_EVENT_AXIS   0x02 // joystick moved
#define JS_EVENT_INIT   0x80 // initial state of device

class RobotThread;
class ROV_groundstation;
/**
 * Encapsulates all data relevant to a sampled joystick event.
 */
class JoystickEvent
{

public:
  /** Minimum value of axes range */
  static const short MIN_AXES_VALUE = -32768;

  /** Maximum value of axes range */
  static const short MAX_AXES_VALUE = 32767;
  
  /**
   * The timestamp of the event, in milliseconds.
   */
  unsigned int time;
  
  /**
   * The value associated with this joystick event.
   * For buttons this will be either 1 (down) or 0 (up).
   * For axes, this will range between MIN_AXES_VALUE and MAX_AXES_VALUE.
   */
  short value;
  
  /**
   * The event type.
   */
  unsigned char type;
  
  /**
   * The axis/button number.
   */
  unsigned char number;

  /**
   * Returns true if this event is the result of a button press.
   */
  bool isButton()
  {
    return (type & JS_EVENT_BUTTON) != 0;
  }

  /**
   * Returns true if this event is the result of an axis movement.
   */
  bool isAxis()
  {
    return (type & JS_EVENT_AXIS) != 0;
  }

  /**
   * Returns true if this event is part of the initial state obtained when
   * the joystick is first connected to.
   */
  bool isInitialState()
  {
    return (type & JS_EVENT_INIT) != 0;
  }

  //Q_PROPERTY method provides a way for setting up communication between qml and c++
  Q_PROPERTY(int accValue READ getAccValue WRITE setAccValue NOTIFY accValueChanged)
  //get the acceleration for x, y and z axis
  inline short getAccValue(){
      return value;
  }

signals:
  void accValueChanged();

  /**
   * The ostream inserter needs to be a friend so it can access the
   * internal data structures.
   */
  friend std::ostream& operator<<(std::ostream& os, const JoystickEvent& e);
};

/**
 * Stream insertion function so you can do this:
 *    cout << event << endl;
 */
std::ostream& operator<<(std::ostream& os, const JoystickEvent& e);

/**
 * Represents a joystick device. Allows data to be sampled from it.
 */
class Joystick :private CVD::Thread {     //set joystick as QObject to communicate with qml

    //Q_PROPERTY(jsdata joyData READ joyData WRITE setJoyData NOTIFY joyDataChanged)

private:

  void run();

  void openPath(std::string devicePath, bool blocking=false);
  
  int _fd;

  bool keepRunning;

  mavlink_message_t msg;

  
public:
  ~Joystick();

  //explicit Joystick(QObject *parent = nullptr);

  /**
   * Initialises an instance for the first joystick: /dev/input/js0
   */
  Joystick();

  /**
   * Initialises an instance for the joystick with the specified,
   * zero-indexed number.
   */
  Joystick(int joystickNumber);

  /**
   * Initialises an instance for the joystick device specified.
   */
  Joystick(std::string devicePath);

  /**
   * Joystick objects cannot be copied
   */
  Joystick(Joystick const&) = delete;

  /**
   * Joystick objects can be moved
   */
  Joystick(Joystick &&) = default;

  /**
   * Initialises an instance for the joystick device specified and provide
   * the option of blocking I/O.
   */
  Joystick(std::string devicePath, bool blocking);
 
  /**
   * Returns true if the joystick was found and may be used, otherwise false.
   */
  bool isFound();

  /**
   * Returns true if the joystick was alive, otherwise false
   *
   */
  bool isAlive();
  
  /**
   * Attempts to populate the provided JoystickEvent instance with data
   * from the joystick. Returns true if data is available, otherwise false.
   */
  bool sample(JoystickEvent* event);

  /**
   * @brief startJoystickReading
   * start the joystick reading thread
   */
  void startJoystickReading(void);
  /**
   * @brief stopJoystickReading
   * stop the joystick reading thread
   */
  void stopJoystickReading(void);

  /**
   * @brief setButtonState
   * emit the button change signal when the buttons are pushed
   */
  void setButtonState(int eventNumber);

  void setControlMsgPack(int eventNumber,int eventValue);

  RobotThread* robotThread;
  JoystickData* joystickData;

};



typedef struct joystickdata{
    int16_t x_acc;
    int16_t y_acc;
    int16_t z_acc;
    int16_t yaw_acc;
    uint8_t brightness;
} jsdata;

void getJoyData(jsdata *data);

extern bool isJoystickAlive;



#endif
