# Hardware Setup Guide

This document provides detailed information about the hardware connections and setup for the MCP9808 Temperature Monitor project.

## Bill of Materials

### Required Components

| Component | Quantity | Description |
|-----------|----------|-------------|
| dsPIC33EP128GP502 | 1 | Main microcontroller |
| MCP9808 | 1 | I2C temperature sensor |
| 16x2 LCD Display | 1 | HD44780 compatible |
| 10kΩ Potentiometer | 1 | LCD contrast control |
| 4.7kΩ Resistors | 2 | I2C pull-up resistors |
| Breadboard/PCB | 1 | Prototyping board |
| Jumper wires | - | For connections |

### Optional Components

| Component | Quantity | Description |
|-----------|----------|-------------|
| 0.1µF Capacitors | 2-3 | Power supply decoupling |
| LED | 1 | Power indicator |
| 220Ω Resistor | 1 | LED current limiting |

## Pinout Reference

### dsPIC33EP128GP502 Pin Assignments

| Function | Pin Number | Pin Name | Description |
|----------|------------|----------|-------------|
| I2C SDA | 20 | RB8 | I2C Data Line |
| I2C SCL | 21 | RB9 | I2C Clock Line |
| LCD RS | 25 | RB13 | LCD Register Select |
| LCD E | 26 | RB14 | LCD Enable |
| LCD D4 | 12 | RB0 | LCD Data Bit 4 |
| LCD D5 | 13 | RB1 | LCD Data Bit 5 |
| LCD D6 | 14 | RB2 | LCD Data Bit 6 |
| LCD D7 | 15 | RB3 | LCD Data Bit 7 |
| UART TX | 22 | RB10 | UART Transmit |
| UART RX | 23 | RB11 | UART Receive |
| VDD | 1, 19, 28 | - | 3.3V Power Supply |
| VSS | 2, 18, 27 | - | Ground |

## Connection Diagrams

### I2C Bus Connection (MCP9808)

```
dsPIC33EP128GP502          MCP9808
     RB8 (SDA)  --------->  SDA
     RB9 (SCL)  --------->  SCL
     3.3V       --------->  VDD
     GND        --------->  GND
     
     SDA        --------->  4.7kΩ ---------> 3.3V
     SCL        --------->  4.7kΩ ---------> 3.3V
```

### LCD Connection (4-bit mode)

```
dsPIC33EP128GP502          16x2 LCD
     RB13 (RS)  --------->  RS
     RB14 (E)   --------->  E
     RB0 (D4)   --------->  D4
     RB1 (D5)   --------->  D5
     RB2 (D6)   --------->  D6
     RB3 (D7)   --------->  D7
     5V         --------->  VDD
     GND        --------->  VSS
     Pot Wiper  --------->  V0 (Contrast)
```

### UART Connection

```
dsPIC33EP128GP502          PC/FTDI
     RB10 (TX)  --------->  RX
     RB11 (RX)  --------->  TX
     GND        --------->  GND
```

## Power Supply Requirements

### dsPIC33EP128GP502
- **Voltage**: 3.0V to 3.6V (3.3V recommended)
- **Current**: ~50mA typical operation

### MCP9808 Temperature Sensor
- **Voltage**: 2.7V to 5.5V (3.3V recommended)
- **Current**: ~200µA typical

### 16x2 LCD Display
- **Voltage**: 4.5V to 5.5V (5V recommended)
- **Current**: ~2mA typical

## Assembly Instructions

### Step 1: Power Supply Setup
1. Connect 3.3V and 5V power supplies
2. Add decoupling capacitors (0.1µF) near each IC
3. Connect all ground connections

### Step 2: I2C Bus Setup
1. Connect MCP9808 VDD to 3.3V
2. Connect MCP9808 GND to ground
3. Connect SDA to RB8 with 4.7kΩ pull-up to 3.3V
4. Connect SCL to RB9 with 4.7kΩ pull-up to 3.3V

### Step 3: LCD Setup
1. Connect LCD VDD to 5V
2. Connect LCD VSS to ground
3. Connect contrast potentiometer (10kΩ) between 5V and GND
4. Connect potentiometer wiper to LCD V0
5. Connect control pins (RS, E) to RB13, RB14
6. Connect data pins (D4-D7) to RB0-RB3

### Step 4: UART Setup
1. Connect TX (RB10) to external UART RX
2. Connect RX (RB11) to external UART TX
3. Connect ground reference

## Testing and Verification

### Power-On Test
1. Apply power and verify 3.3V and 5V supplies
2. Check that all ICs are properly powered
3. Verify ground connections

### I2C Bus Test
1. Use oscilloscope to check SDA/SCL signals
2. Verify pull-up resistors are working
3. Check for proper start/stop conditions

### LCD Test
1. Adjust contrast potentiometer for clear display
2. Verify all data and control connections
3. Check for proper initialization sequence

### UART Test
1. Connect to PC with appropriate baud rate (230,400)
2. Verify TX/RX signal levels
3. Check for proper data transmission

## Troubleshooting

### Common Issues

#### No Temperature Reading
- **Check I2C connections**: Verify SDA/SCL wiring
- **Check power supply**: Ensure 3.3V to MCP9808
- **Check pull-up resistors**: Verify 4.7kΩ resistors
- **Check sensor address**: Confirm MCP9808 is at 0x18

#### LCD Not Working
- **Check contrast**: Adjust potentiometer
- **Check power**: Verify 5V supply to LCD
- **Check connections**: Verify all data and control pins
- **Check timing**: Ensure proper delay timing

#### UART Issues
- **Check baud rate**: Verify 230,400 baud setting
- **Check connections**: Verify TX/RX wiring
- **Check levels**: Ensure proper voltage levels
- **Check ground**: Verify common ground reference

### Debug Tools
- **Oscilloscope**: For signal analysis
- **Multimeter**: For voltage/continuity checks
- **Logic analyzer**: For digital signal analysis
- **I2C scanner**: For bus device detection

## Safety Considerations

1. **Power Supply**: Use regulated power supplies
2. **Voltage Levels**: Ensure proper voltage levels for each component
3. **Current Limits**: Check current requirements
4. **ESD Protection**: Use anti-static precautions
5. **Heat Dissipation**: Ensure adequate cooling if needed

## Performance Optimization

### I2C Bus
- Use appropriate pull-up resistor values
- Minimize bus capacitance
- Keep traces short and direct

### LCD Interface
- Use proper timing delays
- Minimize display update frequency
- Optimize string operations

### Power Management
- Use low-power modes when possible
- Implement proper sleep/wake cycles
- Monitor power consumption
