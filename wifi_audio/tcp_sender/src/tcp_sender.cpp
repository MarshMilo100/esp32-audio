#include "AudioTools.h"
#include "BluetoothA2DPSource.h"

using namespace audio_tools;  

#define PIN_I2S_MCK   3
#define c3_frequency  130.81
#define VOLUME        100

#define DEBUG

/**
 * @brief We use a ADS1015 I2S microphone as input and send the data to A2DP
 * Unfortunatly the data type from the microphone (int32_t)  does not match with the required data type by A2DP (int16_t),
 * so we need to convert.
 */ 

BluetoothA2DPSource a2dp_source;
I2SStream i2s;
ConverterFillLeftAndRight<int16_t> bothChannels(RightIsEmpty);
AudioInfo info(44100, 2, 32);

#ifdef DEBUG
CsvOutput<int32_t> csvStream(Serial);
StreamCopy copier(csvStream, i2s); // copy i2sStream to csvStream
#endif

const size_t max_buffer_len = 150;
const int channels = 2;
const size_t max_buffer_bytes = max_buffer_len * sizeof(int16_t) * channels;
uint8_t buffer[max_buffer_bytes]={0};

// callback used by A2DP to provide the sound data - usually len is 128 2 channel int16 frames
int32_t get_sound_data(Frame* data, int32_t len) 
{
    size_t req_bytes = min(max_buffer_bytes, len*2*sizeof(int16_t));
    // the ADC provides data in int32_t -> we read it into the buffer of int32_t data so *2
    size_t result_bytes = i2s.readBytes((uint8_t*)buffer, req_bytes*2);
    // we have data only in 1 channel but we want to fill both
    return bothChannels.convert((uint8_t*)buffer, result_bytes);
}

// Arduino Setup
void setup(void) 
{
    Serial.begin(115200);
    AudioLogger::instance().begin(Serial, AudioLogger::Info);
  
    // start i2s input with default configuration
    Serial.println("starting I2S...");
    auto cfg = i2s.defaultConfig(RX_MODE);
    cfg.i2s_format = I2S_STD_FORMAT; // or try with I2S_LSB_FORMAT
    cfg.pin_mck = 3;
    cfg.use_apll = true;  // try with yes
    cfg.copyFrom(info);
    cfg.is_master = true;
    i2s.begin(cfg);
  
    // start the bluetooth
    Serial.println("starting A2DP...");
    a2dp_source.set_auto_reconnect(true);
    a2dp_source.start("WoofWoof", get_sound_data);  

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
#ifdef DEBUG
    copier.copy();
#else
    delay(1000);
#endif
}
