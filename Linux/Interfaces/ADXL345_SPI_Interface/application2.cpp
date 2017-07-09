// Application to read the accelerometer's values and display them with a delay of 1s.
#include "adxl345_spi.h"

// Header for usleep function.
#include <unistd.h>
using namespace std;

int main (void) {

    // Defining an adxl345 object in bus 0 and chipselect 1.
    adxl345_spi adxl345(0,1);

    // Configure the bus in SPI Mode 3 at 50000 baud rate and 8 bits per word.
    adxl345.config(SPI_MODE_3,50000,8);

    // Enable full range (10 bit resolution).
    adxl345.writeRegister(DATA_FORMAT,16);

    // Enable measurement.
    adxl345.writeRegister(POWER_CTL,8);

    while(1) {

        // Read data from all the three axes.
        int datax0 = adxl345.readRegister(DATAX0);
        int datax1 = adxl345.readRegister(DATAX1);
        int datay0 = adxl345.readRegister(DATAY0);
        int datay1 = adxl345.readRegister(DATAY1);
        int dataz0 = adxl345.readRegister(DATAZ0);
        int dataz1 = adxl345.readRegister(DATAZ1);

        // Format the output.
        int xaxis = datax0 | (datax1 << 8);
        int yaxis = datay0 | (datay1 << 8);
        int zaxis = dataz0 | (dataz1 << 8);

        // Display with delay.
        cout<<xaxis<<"\n"<<yaxis<<"\n"<<zaxis<<"\n\n";
        usleep(1000000);
    }
}

