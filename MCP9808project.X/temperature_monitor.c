#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include "pic24_all.h"

// UART baud h?z?
#define BAUD_RATE 230400

// I2C tan?mlar
#define I2C_BAUD_RATE 100000
#define I2C_CLOCK_FREQ 7300000
#define MCP9808_ADDRESS 0x18
#define MCP9808_REG_TEMP 0x05

// LCD Pin tan?mlar?
#define RS_HIGH() _LATB13 = 1
#define RS_LOW()  _LATB13 = 0
#define E_HIGH()  _LATB14 = 1
#define E_LOW()   _LATB14 = 0

#define D4(x) _LATB0 = x
#define D5(x) _LATB1 = x
#define D6(x) _LATB2 = x
#define D7(x) _LATB3 = x

// LCD Fonksiyonlar?
void lcd_write_nibble(uint8_t nibble) {
    D4((nibble >> 0) & 0x01);
    D5((nibble >> 1) & 0x01);
    D6((nibble >> 2) & 0x01);
    D7((nibble >> 3) & 0x01);

    E_HIGH();
    DELAY_MS(1);
    E_LOW();
    DELAY_MS(1);
}

void lcd_cmd(uint8_t cmd) {
    RS_LOW();
    lcd_write_nibble(cmd >> 4);
    lcd_write_nibble(cmd & 0x0F);
    DELAY_MS(2);
}

void lcd_write_data(uint8_t data) {
    RS_HIGH();
    lcd_write_nibble(data >> 4);
    lcd_write_nibble(data & 0x0F);
    DELAY_MS(2);
}

void lcd_init(void) {
    CONFIG_RB0_AS_DIG_OUTPUT();
    CONFIG_RB1_AS_DIG_OUTPUT();
    CONFIG_RB2_AS_DIG_OUTPUT();
    CONFIG_RB3_AS_DIG_OUTPUT();
    CONFIG_RB13_AS_DIG_OUTPUT();
    CONFIG_RB14_AS_DIG_OUTPUT();

    DELAY_MS(20);
    RS_LOW();
    lcd_write_nibble(0x03);
    DELAY_MS(5);
    lcd_write_nibble(0x03);
    DELAY_MS(5);
    lcd_write_nibble(0x03);
    DELAY_MS(5);
    lcd_write_nibble(0x02);

    lcd_cmd(0x28); // 4-bit, 2-line, 5x8 dots
    lcd_cmd(0x0C); // Display ON, Cursor OFF
    lcd_cmd(0x06); // Entry mode, auto-increment
    lcd_cmd(0x01); // Clear display
    DELAY_MS(2);
}

void lcd_goto(uint8_t row, uint8_t column) {
    uint8_t address = (row == 2) ? 0x40 : 0x00;
    address += column - 1;
    lcd_cmd(0x80 | address);
}

void lcd_puts(const char* str) {
    while (*str) {
        lcd_write_data(*str++);
    }
}

// I2C Fonksiyonlar?
void I2C_Init(void) {
    I2C1BRG = ((I2C_CLOCK_FREQ / I2C_BAUD_RATE) - (I2C_CLOCK_FREQ / 10000000)) - 1;
    I2C1CONbits.I2CEN = 1;
}

void I2C_Start(void) {
    I2C1CONbits.SEN = 1;
    while (I2C1CONbits.SEN);
}

void I2C_Stop(void) {
    I2C1CONbits.PEN = 1;
    while (I2C1CONbits.PEN);
}

void I2C_Write(uint8_t data) {
    I2C1TRN = data;
    while (I2C1STATbits.TRSTAT);
}

uint8_t I2C_Read(uint8_t ack) {
    I2C1CONbits.RCEN = 1;
    while (!I2C1STATbits.RBF);
    uint8_t data = I2C1RCV;
    I2C1CONbits.ACKDT = ack ? 0 : 1;
    I2C1CONbits.ACKEN = 1;
    while (I2C1CONbits.ACKEN);
    return data;
}

float MCP9808_Read_Temperature(void) {
    uint8_t tempHigh, tempLow;
    uint16_t temp;
    float temperature;

    I2C_Start();
    I2C_Write((MCP9808_ADDRESS << 1) | 0);
    I2C_Write(MCP9808_REG_TEMP);
    I2C_Start();
    I2C_Write((MCP9808_ADDRESS << 1) | 1);

    tempHigh = I2C_Read(1);
    tempLow = I2C_Read(0);
    I2C_Stop();

    temp = ((tempHigh & 0x1F) << 8) | tempLow;

    if (temp & 0x1000) {
        temp -= 8192;
    }

    temperature = temp * 0.0625;
    return temperature;
}

int main(void) {
    configClock();                   // Sistem saati yap?land?rmas?
    configDefaultUART(BAUD_RATE);    // UART yap?land?rmas?
    I2C_Init();                      // I2C ba?lat
    lcd_init();                      // LCD ba?lat

    lcd_goto(1, 1);
    lcd_puts("Temp Monitor");

    char buffer[32];

    while (1) {
        float tempC = MCP9808_Read_Temperature();

        // LCD Güncelleme
        lcd_goto(2, 1);
        sprintf(buffer, "Temp: %.2f C", tempC);
        lcd_puts("                "); // Eski de?erleri temizle
        lcd_goto(2, 1);
        lcd_puts(buffer);

        // UART üzerinden s?cakl?k gönderme
        sprintf(buffer, "Temperature: %.2f C\r\n", tempC);
        outString(buffer);

        DELAY_MS(1000); // 1 saniyede bir okuma ve gönderme
    }

    return 0;
}
