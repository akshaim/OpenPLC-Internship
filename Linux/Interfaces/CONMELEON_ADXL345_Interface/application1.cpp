#include <iostream>
#include "adxl345.h"
using namespace std;
int main(void) {
  char spidevice[] = "/dev/spidev0.1";
  CONMELEON::CAdxl345 adxl(spidevice);
  unsigned char device_id;
  if(!adxl.readRegister(CONMELEON::DEVID,&device_id)) {
    cout<<"Error reading";
    return 0;
  }
  cout<<"Device ID: "<<(int)device_id<<"\n";
}
