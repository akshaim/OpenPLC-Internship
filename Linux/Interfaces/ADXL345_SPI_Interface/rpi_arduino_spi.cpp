// Simple application to establish SPI communication between RPI (Master)
// and Arduino (Slave) and send data from RPI to arduino.
#include "adxl345_spi.h"

// Header for sleep function.
#include <unistd.h>
using namespace std;

int main(void) {

    // Defining an adxl345 object in bus 0 and chipselect 1.
    adxl345_spi adxl345(0,1);

    // Configure the bus in SPI Mode 3 at 50000 baud rate and 8 bits per word.
    adxl345.config(SPI_MODE_3,1000000,8);

    // Sending data 0 to 10 via SPI to arduino with a delay of 1s.
    for(int i=0;i<=10;i++){
        adxl345.writeValue((char)i);
        usleep(1000000);
    }
}

