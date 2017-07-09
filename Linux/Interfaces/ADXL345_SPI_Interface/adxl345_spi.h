// This is the header file (interface) for communication between Raspberry Pi Zero and ADXL345, 3-axis digital accelerometer 
// module using SPI protocol.

// Author: V.Adithya
// Project: Open PLC

#ifndef ADXL345_SPI_H
#define ADXL345_SPI_H

// List of headers required.
#include <sys/ioctl.h>
#include <linux/spi/spidev.h>
#include <fcntl.h>
#include <cstring>
#include <iostream>
#include <string>

// List of registers in ADXL345 and their addresses
#define DEVID 0x00
#define THRESH_TAP 0x1d
#define OFSX 0x1e
#define OFSY 0x1f
#define OFSZ 0x20
#define DUR 0x21
#define Latent 0x22
#define Window 0x23
#define THRESH_ACT 0x24
#define THRESH_INACT 0x25
#define TIME_INACT 0x26
#define ACT_INACT_CTL 0x27
#define THRESH_FF 0x28
#define TIME_FF 0x29
#define TAP_AXES 0x2a
#define ACT_TAP_STATUS 0x2b
#define BW_RATE 0x2c
#define POWER_CTL 0x2d
#define THRESH_TAP 0x1d
#define OFSX 0x1e
#define OFSY 0x1f
#define OFSZ 0x20
#define DUR 0x21
#define Latent 0x22
#define Window 0x23
#define THRESH_ACT 0x24
#define THRESH_INACT 0x25
#define TIME_INACT 0x26
#define ACT_INACT_CTL 0x27
#define THRESH_FF 0x28
#define TIME_FF 0x29
#define TAP_AXES 0x2a
#define ACT_TAP_STATUS 0x2b
#define BW_RATE 0x2c
#define POWER_CTL 0x2d
#define INT_ENABLE 0x2e
#define INT_MAP 0x2f
#define INT_SOURCE 0x30
#define DATA_FORMAT 0x31
#define DATAX0 0x32
#define DATAX1 0x33
#define DATAY0 0x34
#define DATAY1 0x35
#define DATAZ0 0x36
#define DATAZ1 0x37
#define FIFO_CTL 0x38
#define FIFO_STATUS 0x39

// Class containing all the variables and functions for communication.
class adxl345_spi {

    private:
        // Contains the virtual file descriptor value returned by open function.
        int file;

    public:

        // Constructor - Opens the appropriate spidev file in order to gain access to the device.
        // Once the file is open, interactions with the device are made by reading and writing to
        // the file via ioctl (Input Output ConTroL) function.
        adxl345_spi(int spi_bus, int chip_select) {

            // For an SPI device with chipselect C on bus B, the virtual SPI file would
            // be /dev/spidevB.C
            std::string s = "/dev/spidev";

            // Converting int to char
            char bus = spi_bus + 48;
            char cs = chip_select + 48;

            // Open the corresponding file for reading and writing (O_RDWR)
            if((file = open((s+bus+'.'+cs).c_str(),O_RDWR)) == -1)
                std::cout<<"Error occured while opening the file.!\n";
        }

        // Function for configuration of the module. Returns false if setting any configuration fails.
        bool config(int mode, int speed, char bits_per_word) {
            bool success = true;
            if(ioctl(file,SPI_IOC_WR_MODE,&mode)==-1) {
                std::cout<<"Error setting SPI WR mode!\n";
                success = false;
            }
            if(ioctl(file,SPI_IOC_RD_MODE,&mode)==-1) {
                std::cout<<"Error setting SPI RD mode!\n";
                success = false;
            }
            if(ioctl(file,SPI_IOC_WR_BITS_PER_WORD,&bits_per_word)==-1) {
                std::cout<<"Error setting SPI WR bits per word!\n";
                success = false;
            }
            if(ioctl(file,SPI_IOC_RD_BITS_PER_WORD,&bits_per_word)==-1) {
                std::cout<<"Error setting SPI RD bits per word!\n";
                success = false;
            }
            if(ioctl(file,SPI_IOC_WR_MAX_SPEED_HZ,&speed)==-1) {
                std::cout<<"Error setting SPI WR speed!\n";
                success = false;
            }
            if(ioctl(file,SPI_IOC_RD_MAX_SPEED_HZ,&speed)==-1) {
                std::cout<<"Error setting SPI RD speed!\n";
                success = false;
            }
            return success;
        }

        // Function to read a register value.
        int readRegister(char reg) {

            // MSB should be set HIGH to read from a register (R/W'). Hence reg|128 (128=10000000B).
            char trans[2] = {reg|128,0};

            // The spidev driver provides a data structure spi_ioc_transfer that is used to format data
            // to be passed to the device via ioctl.
            struct spi_ioc_transfer rd;

            // Setting memory.
            memset(&rd,0,sizeof(rd));
            rd.tx_buf=(unsigned long)trans;
            rd.rx_buf=(unsigned long)trans;
            rd.len=2;
            if(ioctl(file,SPI_IOC_MESSAGE(1),&rd)==-1) {
                std::cout<<"Error while trying to access the register!\n";
                return -1;
            }
            return (int)trans[1];
        }

        // Function to write a value to a register. Function returns false if writing fails.
        bool writeRegister(char reg, char value) {

            // MSB should be low for write operation. (R/W')
            char trans[2] = {reg,value};
            struct spi_ioc_transfer wr;
            memset(&wr,0,sizeof(wr));
            wr.tx_buf=(unsigned long)trans;
            wr.rx_buf=(unsigned long)trans;
            wr.len=2;
            if(ioctl(file,SPI_IOC_MESSAGE(1),&wr)==-1) {
                std::cout<<"Error while trying to write to the register!\n";
                return false;
            }
            return true;
        }

        // Function to write a value on the SPI bus
        bool writeValue(char val) {
            char trans[2] = {val,0};
            struct spi_ioc_transfer wr;
            memset(&wr,0,sizeof(wr));
            wr.tx_buf=(unsigned long)trans;
            wr.rx_buf=(unsigned long)trans;
            wr.len=2;
            if(ioctl(file,SPI_IOC_MESSAGE(1),&wr)==-1) {
                std::cout<<"Error while trying to write the value on the bus!\n";
                return false;
            }
            return true;
        }

};

#endif

