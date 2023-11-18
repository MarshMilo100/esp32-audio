#include <Arduino.h>
#include "AudioTools.h"
#include "AudioLibs/Communication.h"
#include "AudioCodecs/CodecSBC.h"

#define DEBUG

ESPNowStream now;
I2SStream i2s;
AudioInfo info(44100, 2, 32); // may need to adjust
EncodedAudioStream decoder(&i2s, new SBCDecoder(256)); // decode and write to I2S - ESP Now is limited to 256 bytes
StreamCopy copier(decoder, now);
const char *peers[] = {"A8:48:FA:0B:93:02"};

#ifdef DEBUG
CsvOutput<int32_t> csvStream(Serial);
StreamCopy copier_serial(csvStream, i2s); // copy i2sStream to csvStream
#endif

// Then somewhere in your sketch:
void read_data_stream(const uint8_t *data, uint32_t length) 
{
#ifdef DEBUG
    // process all data
    int16_t *values = (int16_t*) data;
    for (int j=0; j<length/2; j+=2)
    {
      // print the 2 channel values
      Serial.print(values[j]);
      Serial.print(",");
      Serial.println(values[j+1]);
    }
#endif
}

void setup() 
{
    Serial.begin(115200);

    Serial.println("Starting I2S...");
    auto i2s_config = i2s.defaultConfig(TX_MODE);
    i2s_config.copyFrom(info);
    i2s_config.signal_type = Analog;
    i2s_config.i2s_format = I2S_STD_FORMAT;
    i2s_config.use_apll = true;
    i2s_config.is_master = true;
    i2s.begin(i2s_config);

    Serial.println("Starting ESP-NOW...");
    auto cfg_now = now.defaultConfig();
    cfg_now.mac_address = "A8:48:FA:0B:93:01";
    now.begin(cfg_now);
    now.addPeers(peers);

    Serial.println("Starting Decoder...");
    decoder.begin();

#ifdef DEBUG
    csvStream.begin(info);
#endif

    // Enable LED
    pinMode(2, OUTPUT);
    digitalWrite(2, HIGH);
}

void loop() 
{
    copier.copy();

#ifdef DEBUG
    copier_serial.copy();
#endif /* DEBUG */
}
