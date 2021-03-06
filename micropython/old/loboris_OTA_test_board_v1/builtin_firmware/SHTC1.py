# The MIT License (MIT)
#
# Copyright (c) 2018 AG Weimar 
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

import time
from machine import I2C
import machine

_SHTC1_DEFAULT_I2C_ADDR = 112

class SHTC1_Sensor:
    """
    A driver for the SHTC1 Humidity sensor.
    """

    def __init__(self, i2c, address=_SHTC1_DEFAULT_I2C_ADDR):
        """Initialize the sensor, get the serial # and verify that we found a proper SHTC1"""
        self.i2c = i2c
        self.address = address
        # get id
        self.id = self._i2c_read_words_from_cmd([0xEF, 0xC8], 0.01, 1)


    def get_data(self, T_first = True):
        if (T_first):
            cmd = [0x7C, 0xA2]
        else:
            cmd = [0x5C, 0x24]
        buf = self._i2c_read_words_from_cmd(cmd, 0.02, 2)
        T = buf[0]* (175/(2**16)) -45 # T in °C
        rel_hum = 100* (buf[1]/(2**16))
        return {'T': T, 'RH': rel_hum}

    def _i2c_read_words_from_cmd(self, command, delay, reply_size):
        """Run an SGP command query, get a reply and CRC results if necessary"""
        self.i2c.writeto(self.address, bytes(command))

        time.sleep(delay)
        if not reply_size:
            return None
        crc_result = self.i2c.readfrom(self.address, reply_size*3)
        #print("\tRaw Read: ", crc_result)
        result = []
        for i in range(reply_size):
            word = [crc_result[3*i], crc_result[3*i+1]]
            crc = crc_result[3*i+2]
            if self._generate_crc(word) != crc:
                raise RuntimeError('CRC Error')
            result.append(word[0] << 8 | word[1])
        #print("\tOK Data: ", [hex(i) for i in result])
        return result

    def _generate_crc(self, data):
        """8-bit CRC algorithm for checking data"""
        crc = 0xFF
        # Calculate 8-Bit checksum with given polynomial
        for byte in data:
            crc ^= byte
            for _ in range(8):
                if crc & 0x80:
                    crc = (crc << 1) ^ 0x31
                else:
                    crc <<= 1
        return crc & 0xFF
        
    def soft_reset(self):
        """Soft reset the SHTC1"""
        self.i2c.writeto(self.address, bytes([0x80, 0x5D]))
