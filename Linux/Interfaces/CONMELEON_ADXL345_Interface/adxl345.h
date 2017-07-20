/*******************************************************************************
 *
 *  This class represents a low power, 3-axis accelerometer ADXL345 with high resolution (13-bit).
 *  ADXL345 is derived from the CSpiDevice base class which uses the linux kernel spidev device driver.
 *
 *  A SPI device on bus X with chip select line Y will be available as /dev/spidevX.Y
 *  If you don't see this device in your file system, the spidev kernel module might not be loaded
 *  SPI devices have a limited userspace API, supporting basic half-duplex
 *	read() and write() access to SPI slave devices.  Using ioctl() requests,
 *	full duplex transfers and device I/O configuration are also available.
 *******************************************************************************/

#ifndef SPI_ADXL345_H_
#define SPI_ADXL345_H_

#include "../spi/spidevice.h"

namespace CONMELEON {

//! A list of all registers of the ADXL345 module
enum ERegister {
        DEVID = 0x00,
        THRESH_TAP = 0x1d,
        OFSX = 0x1e,
        OFSY = 0x1f,
        OFSZ = 0x20,
        DUR = 0x21,
        Latent = 0x22,
        Window = 0x23,
        THRESH_ACT = 0x24,
        THRESH_INACT = 0x25,
        TIME_INACT = 0x26,
        ACT_INACT_CTL = 0x27,
        THRESH_FF = 0x28,
        TIME_FF = 0x29,
        TAP_AXES = 0x2a,
        ACT_TAP_STATUS = 0x2b,
        BW_RATE = 0x2c,
        POWER_CTL = 0x2d,
        INT_ENABLE = 0x2e,
        INT_MAP = 0x2f,
        INT_SOURCE = 0x30,
        DATA_FORMAT = 0x31,
        DATAX0 = 0x32,
        DATAX1 = 0x33,
        DATAY0 = 0x34,
        DATAY1 = 0x35,
        DATAZ0 = 0x36,
        DATAZ1 = 0x37,
        FIFO_CTL = 0x38,
        FIFO_STATUS = 0x39
};

//! Used to set the range of the accelerometer. ADXL345 can have a range upto +/- 16g.
enum ERange {
        RANGE_2G,
        RANGE_4G,
        RANGE_8G,
        RANGE_16G
};

/*! \class CAdxl345
 *  \brief CAdxl345 represents a low power, 3-axis accelerometer ADXL345 with high resolution (13-bit).
 *
 *  The CAds1018 class is derived from the CSpiDevice base class
 */
class CAdxl345 : public CSpiDevice {

public:

	/*! \fn CAdxl345(const char* sDevice)
	 * \brief creates an ADXL345 device according to the  \a sDevice parameter
	 * \param sDevice gives the device path e.g. /dev/spidev0.1 in case of the CONMELEON C1 board
	 *
	 * The constructor sets the default parameters to m_nBitsPerWord = 8, m_enMode = SPIMODE1 and m_nSpeed to 1 MHz.
	 */
	explicit CAdxl345(const char* sDevice);

	/*! \fn CAdxl345(const char* sDevice, unsigned int nSpeed, CONMELEON::ESpiMode enMode)
	 * \brief creates a SPI device according to the  \a sDevice parameter
	 * \param sDevice gives the device path e.g. /dev/spidev0.1
	 * \param nSpeed gives the bus clock frequency e.g. 1000000 for 1 MHz
	 * \param enMode gives the SPI bus mode setting e.g. SPIMODE1
	 *
	 * The constructor sets the default parameters to m_nBitsPerWord = 8
	 */
      	CAdxl345(const char* sDevice, unsigned int nSpeed, CONMELEON::ESpiMode enMode);

        /* \fn bool readRegister(unsigned char reg, unsigned char* regData)
         * \brief This function reads a register of ADXL345
         * \param reg gives the register to be read
         * \param regData is a pointer to the location/variable to which the register's data should be stored
         *
         * TRUE is returned if the read operation was successful.
         */
        bool readRegister(ERegister reg, unsigned char* regData);

        /* \fn bool writeRegister(unsigned char reg, unsigned char value)
         * \brief This function writes a value to a register of ADXL345.
         * \param reg gives the register to be written
         * \param value gives the value to be written to the specified register
         *
         * TRUE is returned if the write operation was successful
         */
        bool writeRegister(ERegister reg, unsigned char value);

        /* \fn bool startMeasure()
         * \brief This function sets the measure bit of the POWER_CTL register to start measuring
         *
         * TRUE is returned if the operation was successful
         */
        bool startMeasure();

        /* \fn bool stopMeasure()
         * \brief This function will stop the ADXL345 from measuring. This will place the module in standby mode.
         * \brief Power consumption is minimum in standby mode.
         *
         * TRUE is returned if the operation was successful
         */
        bool stopMeasure();

        /* \fn bool setRange(ERange range)
         * \brief This function will set the range of measurement of the device
         * \param ERange will tell the range that should be set
         *
         * TRUE will be returned if the operation was successful
         */
        bool setRange(ERange range);
};

}

#endif /* SPI_ADXL345_H_ */
