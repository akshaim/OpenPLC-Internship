// This is an application to read the ADXL345 accelerometer's values, format it and display it with a delay of 0.5s
// The application is based on the Conmeleon ADXL345 interface
#include "adxl345.h"

// Other header definitions
#include <iostream>
#include <unistd.h>

using namespace std;

int main(void) {

  // The spi driver file path. Chip Select 1
  char spidevice[] = "/dev/spidev0.1";

  // Create an object of the Conmeleon interface
  CONMELEON::CAdxl345 adxl(spidevice);

  unsigned char device_id;

  if(!adxl.readRegister(CONMELEON::DEVID,&device_id)) {
    cout<<"Error reading device id";
    return 0;
  }

  cout<<"Device ID: "<<(int)device_id<<" (Should be 229)\n\n";

  // Enable acceleration measurement
  if(!adxl.startMeasure()) {
    cout<<"Error starting measurement!";
    return 0;
  }

  // Set range
  if(!adxl.setRange(CONMELEON::RANGE_2G)) {
    cout<<"Error setting range!";
    return 0;
  }

  // While loop to print data continously.
  while(1) {

    // Variables to hold the data registers' values
    unsigned char datax0,datax1,datay0,datay1,dataz0,dataz1;
    adxl.readRegister(CONMELEON::DATAX0,&datax0);
    adxl.readRegister(CONMELEON::DATAX1,&datax1);
    adxl.readRegister(CONMELEON::DATAY0,&datay0);
    adxl.readRegister(CONMELEON::DATAY1,&datay1);
    adxl.readRegister(CONMELEON::DATAZ0,&dataz0);
    adxl.readRegister(CONMELEON::DATAZ1,&dataz1);

    // Format the data
    int xaxis = datax0 | (datax1 << 8);
    int yaxis = datay0 | (datay1 << 8);
    int zaxis = dataz0 | (dataz1 << 8);

    // ADXL345 accelerometer values are in 2's complement. Therefore the following formatting.
    if(xaxis & (1<<16 - 1))
      xaxis = xaxis-(1<<16);
    if(yaxis & (1<<16 - 1))
      yaxis = yaxis-(1<<16);
    if(zaxis & (1<<16 - 1))
      zaxis = zaxis-(1<<16);

    // The resolution is 0.004 and g = 9.82
    cout<<xaxis*0.004*9.82<<"\n"<<yaxis*0.004*9.82<<"\n"<<zaxis*0.004*9.82<<"\n\n";

    // Delay of 0.5s
    usleep(500000);
  }
}
