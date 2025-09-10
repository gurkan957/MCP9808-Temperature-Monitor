# MCP9808 Temperature Monitor

A PIC24/dsPIC33 embedded project that interfaces with the MCP9808 high-accuracy temperature sensor via I2C and displays temperature readings on both an LCD display and UART output.

## Features

- **High-Accuracy Temperature Sensing**: Uses MCP9808 sensor with ±0.25°C accuracy
- **Dual Display**: Shows temperature on both 16x2 LCD and UART serial output
- **Real-time Monitoring**: Updates every 1 second
- **I2C Communication**: Standard 100kHz I2C interface
- **4-bit LCD Interface**: Efficient LCD control using minimal pins

## Hardware Requirements

### Microcontroller
- **dsPIC33EP128GP502** (or compatible PIC24/dsPIC33 device)

### Temperature Sensor
- **MCP9808** I2C temperature sensor
- Address: 0x18 (default)

### LCD Display
- **16x2 Character LCD** (HD44780 compatible)
- 4-bit interface mode

### Connections

#### I2C Connections (MCP9808)
| MCP9808 Pin | dsPIC33EP128GP502 Pin | Description |
|-------------|----------------------|-------------|
| VDD         | 3.3V                 | Power Supply |
| GND         | GND                  | Ground |
| SDA         | RB8                  | I2C Data |
| SCL         | RB9                  | I2C Clock |

#### LCD Connections (4-bit mode)
| LCD Pin | dsPIC33EP128GP502 Pin | Description |
|---------|----------------------|-------------|
| VSS      | GND                  | Ground |
| VDD      | 5V                   | Power Supply |
| V0       | Potentiometer        | Contrast Control |
| RS       | RB13                 | Register Select |
| E        | RB14                 | Enable |
| D4       | RB0                  | Data Bit 4 |
| D5       | RB1                  | Data Bit 5 |
| D6       | RB2                  | Data Bit 6 |
| D7       | RB3                  | Data Bit 7 |

#### UART Connections
| Function | dsPIC33EP128GP502 Pin | Description |
|----------|----------------------|-------------|
| TX       | RB10                 | UART Transmit |
| RX       | RB11                 | UART Receive |

## Software Requirements

- **MPLAB X IDE** (v6.20 or later)
- **XC16 Compiler** (v2.10 or later)
- **dsPIC33E-GM-GP-MC-GU-MU_DFP** Device Family Pack (v1.5.258)

## Project Structure

```
MCP9808project.X/
├── temperature_monitor.c     # Main application code
├── lib/                      # PIC24 support library
│   ├── include/             # Header files
│   ├── src/                 # Source files
│   └── application_linker_file/  # Linker script
├── nbproject/               # MPLAB X project configuration
├── docs/                    # Documentation
│   ├── HARDWARE_SETUP.md   # Hardware setup guide
│   ├── SCHEMATIC.md        # Circuit schematics
│   └── CODE_STRUCTURE.md   # Code documentation
├── build/                   # Build artifacts (auto-generated)
└── dist/                    # Distribution files (auto-generated)
```

## Building the Project

1. Open the project in MPLAB X IDE
2. Select the "default" configuration
3. Build the project (F11 or Project → Build)
4. The compiled hex file will be generated in `dist/default/production/`

## Usage

1. **Hardware Setup**: Connect the MCP9808 sensor and LCD as per the pinout table above
2. **Programming**: Load the compiled hex file to your microcontroller
3. **Operation**: 
   - The LCD will display "Temp Monitor" on the first line
   - Temperature readings will appear on the second line in format "Temp: XX.XX C"
   - UART output will send temperature data every second at 230,400 baud

## Technical Specifications

- **Temperature Range**: -40°C to +125°C (MCP9808 specification)
- **Resolution**: 0.0625°C (13-bit)
- **Accuracy**: ±0.25°C (typical)
- **Update Rate**: 1 second
- **I2C Speed**: 100 kHz
- **UART Baud Rate**: 230,400 bps
- **LCD Interface**: 4-bit parallel

## Code Features

### I2C Implementation
- Custom I2C driver for MCP9808 communication
- Proper start/stop conditions and ACK handling
- Temperature register reading with sign extension

### LCD Interface
- 4-bit mode for efficient pin usage
- Custom LCD driver with initialization sequence
- String display and cursor positioning

### Temperature Processing
- Raw sensor data conversion to Celsius
- Sign extension for negative temperatures
- Floating-point precision display

## Troubleshooting

### Common Issues

1. **No Temperature Reading**
   - Check I2C connections (SDA/SCL)
   - Verify MCP9808 power supply (3.3V)
   - Confirm sensor address (0x18)

2. **LCD Not Displaying**
   - Check contrast potentiometer
   - Verify all data and control pin connections
   - Ensure proper power supply (5V for LCD)

3. **UART Not Working**
   - Verify baud rate setting (230,400)
   - Check TX/RX pin connections
   - Confirm UART configuration

### Debug Tips

- Use MPLAB X debugger to step through I2C communication
- Check I2C bus with oscilloscope for proper signals
- Verify LCD initialization sequence timing

## Documentation

- **Hardware Setup Guide** - Detailed hardware connections and assembly
- **Circuit Schematics** - Complete circuit diagrams and PCB layout
- **Code Structure** - Detailed code documentation and architecture

## License

This project is open source. Please refer to the individual library files for their respective licenses.

## Contributing

Feel free to submit issues, feature requests, or pull requests to improve this project.

## Acknowledgments

- PIC24 support library by Robert B. Reese, Bryan A. Jones, and J. W. Bruce
- MCP9808 datasheet and application notes from Microchip Technology

