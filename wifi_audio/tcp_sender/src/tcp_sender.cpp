#include <Arduino.h>
#include "AudioTools.h"
#include "AudioLibs/Communication.h"
#include "AudioCodecs/CodecSBC.h"

#define DEBUG

#define PIN_I2S_MCK   3
#define c3_frequency  130.81
#define VOLUME        100

I2SStream i2s;
ConverterFillLeftAndRight<int16_t> bothChannels(RightIsEmpty);
AudioInfo info(32000,1,16); // may need to adjust

ESPNowStream now;
SBCEncoder sbc;
EncodedAudioStream encoder(&now, &sbc); // encode and write to ESP-now
StreamCopy copier(encoder, i2s);  // copies sound into i2s
const char *peers[] = {"A8:48:FA:0B:93:01"};

#ifdef DEBUG
CsvOutput<int32_t> csvStream(Serial);
StreamCopy copier_serial(csvStream, i2s); // copy i2sStream to csvStream
#endif

const size_t max_buffer_len = 150;
const int channels = 2;
const size_t max_buffer_bytes = max_buffer_len * sizeof(int16_t) * channels;
uint8_t buffer[max_buffer_bytes]={0};

// Arduino Setup
void setup(void) 
{
    Serial.begin(115200);
    AudioLogger::instance().begin(Serial, AudioLogger::Info);
    
    Serial.println("Starting I2S...");
    auto i2s_config = i2s.defaultConfig(RX_MODE);
    i2s_config.i2s_format = I2S_STD_FORMAT; // or try with I2S_LSB_FORMAT
    i2s_config.pin_mck = 3;
    i2s_config.use_apll = true;  // try with yes
    i2s_config.copyFrom(info);
    i2s_config.is_master = true;
    i2s.begin(i2s_config);
  
    Serial.println("Starting ESP-NOW...");
    auto now_config = now.defaultConfig();
    now_config.mac_address = "A8:48:FA:0B:93:02";
    now.begin(now_config);
    now.addPeers(peers);

    Serial.println("Starting Encoder...");
    encoder.begin(info);

#ifdef DEBUG
    csvStream.begin(info);
#endif

    // Enable LED
    pinMode(2, OUTPUT);
    digitalWrite(2, HIGH);
}

// Arduino loop - repeated processing 
void loop() 
{
    copier.copy();

#ifdef DEBUG
    copier_serial.copy();
#endif /* DEBUG */
}
