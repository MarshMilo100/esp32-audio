#include "BluetoothA2DPSink.h"

BluetoothA2DPSink a2dp_sink;

#define DEBUG

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
    
    static const i2s_config_t i2s_config = 
    {
        .mode = (i2s_mode_t) (I2S_MODE_MASTER | I2S_MODE_TX | I2S_MODE_DAC_BUILT_IN),
        .sample_rate = 44100, // corrected by info from bluetooth
        .bits_per_sample = (i2s_bits_per_sample_t) 16, /* the DAC module will only take the 8bits from MSB */
        .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,
        .communication_format = (i2s_comm_format_t)I2S_COMM_FORMAT_STAND_MSB, 
        .intr_alloc_flags = 0, // default interrupt priority
        .dma_buf_count = 8,
        .dma_buf_len = 64,
        .use_apll = true
    };

    Serial.println("starting A2DP...");
    a2dp_sink.set_i2s_config(i2s_config);
    a2dp_sink.set_auto_reconnect(true);
#ifdef DEBUG
    a2dp_sink.set_stream_reader(read_data_stream, false);
#endif
    a2dp_sink.start("WoofWoof");

    // Enable LED
    pinMode(2, OUTPUT);
    digitalWrite(2, HIGH);
}

void loop() 
{
}
