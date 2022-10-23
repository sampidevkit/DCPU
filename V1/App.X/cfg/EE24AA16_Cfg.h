#ifndef EE24AA16_CFG_H
#define EE24AA16_CFG_H

#define EE24AA16_GetState()                         QWIIC_GetLastState()
#define EE24AA16_I2C_WriteNBytes(SlvAddr, pD, sz)   QWIIC_WriteNBytes(SlvAddr, pD, sz)
#define EE24AA16_I2C_ReadNBytes(SlvAddr, pD, sz)    QWIIC_ReadNBytes(SlvAddr, pD, sz)

#endif