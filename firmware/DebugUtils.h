#include <ArduinoTrace.h>
#include <string.h>

#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)
#define ARDUINOTRACE_SERIAL SerialUSB
#define ARDUINOTRACE_ENABLE_FULLPATH 0

#ifdef DEBUG
  #define DEBUG_TITLE(x) \
  SerialUSB.print(millis()); \
  SerialUSB.print(": "); \
  SerialUSB.print(__FILENAME__); \
  SerialUSB.print(":"); \
  SerialUSB.print(__LINE__); \
  SerialUSB.print(": "); \
  SerialUSB.println(x);

  #define DEBUG_PRINT(x) \
  SerialUSB.print(millis()); \
  SerialUSB.print(": "); \
  DUMP(x);

  #define DEBUG_TRACE() \
  SerialUSB.print(millis()); \
  SerialUSB.print(": "); \
  TRACE();
#else
  #define DEBUG_TITLE(x)
  #define DEBUG_PRINT(x)
  #define DEBUG_TRACE()
#endif
