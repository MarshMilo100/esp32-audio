#include <Arduino.h>
#include "AudioTools.h"
#include "AudioLibs/Communication.h"
#include "AudioCodecs/CodecSBC.h"

#undef DEBUG

ESPNowStream now;
AnalogAudioStream i2s;
AudioInfo info(44100, 1, 16); // may need to adjust
EncodedAudioStream decoder(&i2s, new SBCDecoder(1024)); // decode and write to I2S - ESP Now is limited to 256 bytes
StreamCopy copier(i2s, now);
const char *peers[] = {"A8:48:FA:0B:93:02"};

#ifdef DEBUG
CsvOutput<int32_t> csvStream(Serial);
StreamCopy copier_serial(csvStream, now); // copy i2sStream to csvStream
#endif

void setup() 
{
    Serial.begin(115200);

    Serial.println("Starting I2S...");
    auto config = i2s.defaultConfig(TX_MODE);
    config.copyFrom(info); 
    i2s.begin(config);

    Serial.println("Starting ESP-NOW...");
    auto cfg_now = now.defaultConfig();
    cfg_now.mac_address = "A8:48:FA:0B:93:01";
    now.begin(cfg_now);
    now.addPeers(peers);

    Serial.println("Starting Decoder...");
    //decoder.begin();

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
