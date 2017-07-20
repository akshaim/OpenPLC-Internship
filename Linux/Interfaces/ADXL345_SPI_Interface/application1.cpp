// Simple test application to read the device ID of the adxl345 (0xE5) and set the x axis offset value.
#include "adxl345_spi.h"
using namespace std;

int main(void) {

    // Defining an adxl345 object in bus 0 and chipselect 1.
    adxl345_spi adxl345(0,1);

    // Configure the bus in SPI Mode 3 at 50000 baud rate and 8 bits per word.
    adxl345.config(SPI_MODE_3,50000,8);

    // Read and display the device id 229 (0xE5).
    cout<<adxl345.readRegister(DEVID)<<"\n";

    // Read X-axis offset value from OFSX register.
    cout<<adxl345.readRegister(OFSX)<<"\n";

    // Write the  x value offset.
    adxl345.writeRegister(OFSX,0x0f);

    // Reading the offset value.
    cout<<adxl345.readRegister(OFSX)<<"\n";
}

