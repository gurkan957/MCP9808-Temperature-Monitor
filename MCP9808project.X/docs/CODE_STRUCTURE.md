# Code Structure Documentation

This document provides a detailed overview of the code structure and organization for the MCP9808 Temperature Monitor project.

## Project Architecture

### Main Application File
- **`temperature_monitor.c`**: Main application code containing all functionality

### Library Structure
- **`lib/include/`**: Header files for PIC24 support library
- **`lib/src/`**: Source files for PIC24 support library
- **`lib/application_linker_file/`**: Linker script for bootloader compatibility

## Code Organization

### Header Includes
```c
#include <xc.h>           // XC16 compiler definitions
#include <stdint.h>       // Standard integer types
#include <stdio.h>        // Standard I/O functions
#include "pic24_all.h"    // PIC24 support library
```

### Constants and Definitions
```c
// UART Configuration
#define BAUD_RATE 230400

// I2C Configuration
#define I2C_BAUD_RATE 100000
#define I2C_CLOCK_FREQ 7300000
#define MCP9808_ADDRESS 0x18
#define MCP9808_REG_TEMP 0x05

// LCD Pin Definitions
#define RS_HIGH() _LATB13 = 1
#define RS_LOW()  _LATB13 = 0
#define E_HIGH()  _LATB14 = 1
#define E_LOW()   _LATB14 = 0
```

## Function Organization

### LCD Interface Functions

#### `lcd_write_nibble(uint8_t nibble)`
- **Purpose**: Writes a 4-bit nibble to the LCD
- **Parameters**: `nibble` - 4-bit data to write
- **Implementation**: Sets data pins and toggles enable signal

#### `lcd_cmd(uint8_t cmd)`
- **Purpose**: Sends a command to the LCD
- **Parameters**: `cmd` - 8-bit command byte
- **Implementation**: Sets RS low and sends command in two nibbles

#### `lcd_write_data(uint8_t data)`
- **Purpose**: Writes data to the LCD
- **Parameters**: `data` - 8-bit data byte
- **Implementation**: Sets RS high and sends data in two nibbles

#### `lcd_init(void)`
- **Purpose**: Initializes the LCD display
- **Implementation**: 
  - Configures GPIO pins as outputs
  - Performs LCD initialization sequence
  - Sets display parameters (4-bit mode, 2-line, 5x8 dots)

#### `lcd_goto(uint8_t row, uint8_t column)`
- **Purpose**: Positions cursor at specific location
- **Parameters**: 
  - `row` - Line number (1 or 2)
  - `column` - Column position (1-16)

#### `lcd_puts(const char* str)`
- **Purpose**: Displays a string on the LCD
- **Parameters**: `str` - Null-terminated string to display

### I2C Interface Functions

#### `I2C_Init(void)`
- **Purpose**: Initializes I2C peripheral
- **Implementation**: 
  - Calculates baud rate register value
  - Enables I2C module

#### `I2C_Start(void)`
- **Purpose**: Generates I2C start condition
- **Implementation**: Sets SEN bit and waits for completion

#### `I2C_Stop(void)`
- **Purpose**: Generates I2C stop condition
- **Implementation**: Sets PEN bit and waits for completion

#### `I2C_Write(uint8_t data)`
- **Purpose**: Writes data to I2C bus
- **Parameters**: `data` - Byte to transmit
- **Implementation**: Loads data register and waits for transmission

#### `I2C_Read(uint8_t ack)`
- **Purpose**: Reads data from I2C bus
- **Parameters**: `ack` - ACK/NACK control
- **Returns**: Received byte
- **Implementation**: Enables receive and handles ACK/NACK

### Temperature Sensor Functions

#### `MCP9808_Read_Temperature(void)`
- **Purpose**: Reads temperature from MCP9808 sensor
- **Returns**: Temperature in Celsius as float
- **Implementation**:
  1. Sends temperature register address
  2. Reads high and low bytes
  3. Combines bytes with sign extension
  4. Converts to Celsius using 0.0625°C resolution

### Main Application Function

#### `main(void)`
- **Purpose**: Main application loop
- **Implementation**:
  1. System initialization (clock, UART, I2C, LCD)
  2. Display initial message
  3. Continuous loop:
     - Read temperature
     - Update LCD display
     - Send data via UART
     - Wait 1 second

## Data Flow

### Temperature Reading Process
```
MCP9808 Sensor → I2C Bus → dsPIC33EP128GP502 → Processing → Display
```

### Display Update Process
```
Temperature Data → Format String → LCD Display
                → Format String → UART Output
```

## Memory Usage

### RAM Usage
- **Stack**: 16 bytes (configured in linker)
- **Global Variables**: Minimal (mostly local variables)
- **Buffer**: 32 bytes for string formatting

### Flash Usage
- **Code**: ~2-3 KB (estimated)
- **Available**: ~128 KB (dsPIC33EP128GP502)

## Timing Considerations

### Critical Timing
- **LCD Enable Pulse**: 1ms minimum
- **I2C Clock**: 100 kHz (10µs period)
- **Temperature Update**: 1 second interval

### Delay Functions
- **`DELAY_MS()`**: Millisecond delays for LCD timing
- **I2C Wait Loops**: Polling for completion

## Error Handling

### Current Implementation
- **I2C**: Basic polling without error checking
- **LCD**: No error detection
- **Temperature**: No range validation

### Potential Improvements
- Add I2C error detection
- Implement temperature range checking
- Add system health monitoring

## Code Style and Conventions

### Naming Conventions
- **Functions**: `snake_case` (e.g., `lcd_write_nibble`)
- **Constants**: `UPPER_CASE` (e.g., `BAUD_RATE`)
- **Macros**: `UPPER_CASE` (e.g., `RS_HIGH()`)

### Code Organization
- **Grouping**: Functions grouped by functionality
- **Comments**: Turkish comments for clarity
- **Indentation**: 4-space indentation

## Dependencies

### External Libraries
- **PIC24 Support Library**: Hardware abstraction
- **XC16 Standard Library**: Standard C functions

### Hardware Dependencies
- **dsPIC33EP128GP502**: Target microcontroller
- **MCP9808**: Temperature sensor
- **16x2 LCD**: Display device

## Build Configuration

### Compiler Settings
- **Standard**: GNU C90 (`-std=gnu90`)
- **Optimization**: Level 0 (debug)
- **Warnings**: All warnings enabled
- **Include Path**: `lib\include`

### Linker Settings
- **Stack Size**: 16 bytes
- **Heap Size**: Not configured
- **Memory Model**: Default
- **Linker Script**: `p33EP128GP502_application.gld`

## Testing and Debugging

### Debug Features
- **UART Output**: Real-time temperature data
- **LCD Display**: Visual feedback
- **Symbols**: Debug symbols enabled

### Testing Strategy
- **Unit Testing**: Individual function testing
- **Integration Testing**: Full system testing
- **Hardware Testing**: Physical hardware verification

## Future Enhancements

### Potential Improvements
1. **Error Handling**: Add comprehensive error checking
2. **Power Management**: Implement sleep modes
3. **Data Logging**: Store temperature history
4. **Calibration**: Temperature sensor calibration
5. **Communication**: Add more communication protocols
6. **User Interface**: Add buttons for user interaction
7. **Alarms**: Temperature threshold monitoring
8. **Display**: Enhanced display features
