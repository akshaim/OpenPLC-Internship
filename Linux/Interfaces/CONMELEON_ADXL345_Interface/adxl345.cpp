/*******************************************************************************
 *
 *  This class represents a low power, 3-axis accelerometer ADXL345 with high resolution (13-bit).
 *  ADXL345 is derived from the CSpiDevice base class which uses the linux kernel spidev device driver.
 *
 *  A SPI device on bus X with chip select line Y will be available as /dev/spidevX.Y
 *  If you don't see this device in your file system, the spidev kernel module might not be loaded
 *  SPI devices have a limited userspace API, supporting basic half-duplex
 *      read() and write() access to SPI slave devices.  Using ioctl() requests,
 *      full duplex transfers and device I/O configuration are also available.
 *******************************************************************************/

// The following includes are required.

#include "../spi/adxl345.h"
#include <unistd.h>

namespace CONMELEON {

  /*!
   *    A default speed of 1000000 bits per second is used
   *    and a default mode of 3 is used.
   *    Both the constructors call the base class (CSpiDevice) constructor with either the default values
   *    or the specified values.
   */
  CAdxl345::CAdxl345(const char* sDevice) : CSpiDevice(sDevice, 1000000, SPIMODE3) { }

  CAdxl345::CAdxl345(const char* sDevice, unsigned int nSpeed, CONMELEON::ESpiMode enMode) : CSpiDevice(sDevice, nSpeed, enMode) { } 

  bool CAdxl345::readRegister(ERegister reg, unsigned char* regData) {

    // For reading the MSB should be HIGH (R/W'). Hence reg|0x80.
    unsigned char trans[2] = {reg|0x80,0};

    // Array to hold the received bytes.
    unsigned char receive[2];

    // Call the transfer functio from the base class (CSpidevice).
    bool res = CSpiDevice::transfer(trans,receive,2);

    // The required register data will be the second byte received.
    *regData = receive[1];
    return res;
  }

  bool CAdxl345::writeRegister(ERegister reg, unsigned char value) {

    // For writing the MSB should be LOW (R/W').
    unsigned char trans[2] = {reg,value};

    // Array to hold the received bytes.
    unsigned char receive[2];

    // Call the transfer function from the base class (CSpidevice).
    return CSpiDevice::transfer(trans,receive,2);
  }

  bool CAdxl345::startMeasure() {
    unsigned char val;

    // Read the POWER_CTL register value
    if(!readRegister(POWER_CTL,&val))
      return false;

    // Set the measure bit in the POWER_CTL register
    val|=0x08;

    // Write to the register
    return writeRegister(POWER_CTL,val);
  }

  bool CAdxl345::stopMeasure() {
    unsigned char val;

    // Read the POWER_CTL register value
    if(!readRegister(POWER_CTL,&val))
      return false;

    // Clear the measure bit
    val&=0xf7;

    // Write to the register
    return writeRegister(POWER_CTL,val);
  }

  bool CAdxl345::setRange(ERange range) {
    unsigned char val;

    // Read the DATA_FORMAT register
    if(!readRegister(DATA_FORMAT,&val))
      return false;

    // Set the range bits (D1 D0 bits) appropriately
    val&=range;
    val|=range;

    // Write to the register
    return writeRegister(DATA_FORMAT,val);
  }
}  // namespace CONMELEON
