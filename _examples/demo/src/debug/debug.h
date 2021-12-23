#define ARDUINOTRACE_SERIAL SerialUSB
#include <ArduinoTrace.h>

#if DEBUG == 2
  // Print just the variable
  #define DEBUG_PRINT(x)       \
    SerialUSB.print(millis()); \
    SerialUSB.print(": ");     \
    DUMP(x);

  // Print the text without any millis()
  #define DEBUG_PRINT_SIMPLE(x) \
    SerialUSB.print(x);

  // Print the variable and some concatenated text
  #define DEBUG_PRINT_MORE(x)     \
    SerialUSB.print(millis());    \
    SerialUSB.print(": ");        \
    SerialUSB.println(x);

  // Print GPS info
  #define DEBUG_GPS(x)  \
    SerialUSB.print(millis()); \
    SerialUSB.print(": ");     \
    SerialUSB.println(x);

  #define DEBUG_TRACE()           \
    SerialUSB.print(millis());    \
    SerialUSB.print(": ");        \
    TRACE();
#elif DEBUG == 1
  // Print just the variable
  #define DEBUG_PRINT(x)       \
    SerialUSB.print(millis()); \
    SerialUSB.print(": ");     \
    DUMP(x);

  // Print the text without any millis()
  #define DEBUG_PRINT_SIMPLE(x) \
    SerialUSB.print(x);

  // Print the variable and some concatenated text
  #define DEBUG_PRINT_MORE(x)  \
    SerialUSB.print(millis()); \
    SerialUSB.print(": ");     \
    SerialUSB.println(x);

  // Do not Print GPS info
  #define DEBUG_GPS(x)

  #define DEBUG_TRACE()        \
    SerialUSB.print(millis()); \
    SerialUSB.print(": ");     \
    TRACE();
#else  // DEBUG == 0
  #define DEBUG_PRINT(x)
  #define DEBUG_PRINT_SIMPLE(x)
  #define DEBUG_PRINT_MORE(x)
  #define DEBUG_GPS(x)
  #define DEBUG_TRACE()
#endif
