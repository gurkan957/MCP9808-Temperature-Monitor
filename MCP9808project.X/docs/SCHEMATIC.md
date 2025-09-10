# Circuit Schematic

This document contains the circuit schematic and connection details for the MCP9808 Temperature Monitor project.

## System Block Diagram

```
┌─────────────────┐    I2C     ┌──────────────┐
│                 │◄──────────►│              │
│ dsPIC33EP128GP502│            │   MCP9808    │
│                 │            │ Temperature  │
│                 │            │   Sensor     │
│                 │            └──────────────┘
│                 │
│                 │    4-bit    ┌──────────────┐
│                 │◄──────────►│              │
│                 │            │   16x2 LCD   │
│                 │            │   Display    │
│                 │            └──────────────┘
│                 │
│                 │    UART     ┌──────────────┐
│                 │◄──────────►│              │
│                 │            │   PC/Serial  │
│                 │            │   Terminal   │
│                 │            └──────────────┘
└─────────────────┘
```

## Detailed Circuit Connections

### Power Supply Section
```
                    ┌─────────┐
                    │  5V     │
                    │ Supply  │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ 0.1µF   │
                    │ Cap     │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ 3.3V    │
                    │ Reg     │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ 0.1µF   │
                    │ Cap     │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ 3.3V    │
                    │ Rail    │
                    └─────────┘
```

### I2C Bus Section
```
dsPIC33EP128GP502          MCP9808
     Pin 20 (RB8)  ────────► SDA ──┐
     Pin 21 (RB9)  ────────► SCL ──┤
                                   │
                              ┌────▼────┐
                              │ 4.7kΩ   │
                              │ Pull-up │
                              └────┬────┘
                                   │
                              ┌────▼────┐
                              │  3.3V   │
                              └─────────┘
```

### LCD Interface Section
```
dsPIC33EP128GP502          16x2 LCD
     Pin 25 (RB13) ────────► RS
     Pin 26 (RB14) ────────► E
     Pin 12 (RB0)  ────────► D4
     Pin 13 (RB1)  ────────► D5
     Pin 14 (RB2)  ────────► D6
     Pin 15 (RB3)  ────────► D7
     
     5V Supply ────────────► VDD
     GND ──────────────────► VSS
     
     ┌─────────┐
     │   5V    │
     └────┬────┘
          │
     ┌────▼────┐
     │ 10kΩ    │
     │ Pot     │
     └────┬────┘
          │
     ┌────▼────┐
     │  GND    │
     └─────────┘
          │
     ┌────▼────┐
     │   V0    │
     │ (LCD)   │
     └─────────┘
```

### UART Interface Section
```
dsPIC33EP128GP502          External UART
     Pin 22 (RB10) ────────► TX ──┐
     Pin 23 (RB11) ────────► RX ──┤
     GND ──────────────────► GND ─┘
```

## Component Placement

### Breadboard Layout (Top View)
```
                    ┌─────────────────────────┐
                    │                         │
                    │  [MCP9808]              │
                    │                         │
                    │  [4.7kΩ] [4.7kΩ]       │
                    │                         │
                    │  [dsPIC33EP128GP502]    │
                    │                         │
                    │  [10kΩ Pot]             │
                    │                         │
                    │  [16x2 LCD]             │
                    │                         │
                    │  [0.1µF] [0.1µF]        │
                    │                         │
                    └─────────────────────────┘
```

## Signal Routing

### Critical Signal Paths

1. **I2C Bus**
   - Keep SDA/SCL traces short and direct
   - Use 4.7kΩ pull-up resistors
   - Minimize bus capacitance

2. **LCD Interface**
   - Direct connections for data and control lines
   - Proper contrast control with potentiometer
   - Adequate power supply filtering

3. **Power Distribution**
   - Star ground configuration
   - Decoupling capacitors near each IC
   - Separate analog and digital grounds if needed

## PCB Layout Considerations

### Layer Stack-up (if using PCB)
- **Top Layer**: Signal routing
- **Ground Plane**: Continuous ground plane
- **Power Plane**: 3.3V and 5V distribution
- **Bottom Layer**: Additional routing if needed

### Trace Widths
- **Power Traces**: 0.5mm minimum
- **Signal Traces**: 0.2mm minimum
- **I2C Traces**: 0.3mm (controlled impedance)

### Via Usage
- Use vias for layer transitions
- Minimize via count for critical signals
- Use thermal vias for power planes

## Testing Points

### Recommended Test Points
1. **3.3V Supply**: Voltage measurement
2. **5V Supply**: Voltage measurement
3. **I2C SDA**: Signal monitoring
4. **I2C SCL**: Signal monitoring
5. **LCD Enable**: Timing verification
6. **UART TX**: Data transmission check

### Debug Headers
```
┌─────────┐
│ 1: 3.3V │
│ 2: GND  │
│ 3: SDA  │
│ 4: SCL  │
│ 5: TX   │
│ 6: RX   │
└─────────┘
```

## Bill of Materials (BOM)

### Active Components
| Reference | Part Number | Description | Quantity |
|-----------|-------------|-------------|----------|
| U1 | dsPIC33EP128GP502 | Microcontroller | 1 |
| U2 | MCP9808 | Temperature Sensor | 1 |
| U3 | 16x2 LCD | HD44780 Compatible | 1 |

### Passive Components
| Reference | Value | Description | Quantity |
|-----------|-------|-------------|----------|
| R1, R2 | 4.7kΩ | I2C Pull-up | 2 |
| R3 | 10kΩ | LCD Contrast | 1 |
| C1, C2 | 0.1µF | Decoupling | 2 |

### Connectors
| Reference | Type | Description | Quantity |
|-----------|------|-------------|----------|
| J1 | Header 2x3 | Debug Header | 1 |
| J2 | Header 1x4 | UART Connector | 1 |

## Manufacturing Notes

### Assembly Sequence
1. Place passive components first
2. Install ICs with proper orientation
3. Install connectors last
4. Verify all connections before power-up

### Quality Control
- Visual inspection of all solder joints
- Continuity testing of all connections
- Power supply voltage verification
- Functional testing of each subsystem

### Packaging
- Use anti-static packaging for ICs
- Protect LCD from mechanical damage
- Include assembly instructions
- Provide test procedures
