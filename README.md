## Audio Processing Project
This project is a MATLAB-based audio processing demonstration that covers various operations on an audio file, 'file_example.wav'. It showcases common audio processing tasks such as changing sampling rates, scaling audio, resampling, and applying a Fast Fourier Transform (FFT) filter to eliminate high frequencies.

# Project Overview
The project is structured as follows:

1. Read Audio File: The script reads the audio data from 'file_example.wav' into a vector and retrieves the sampling rate.

2. Playback Audio: It plays back the audio with an initial sampling rate of 8,000 samples per second (8K samples/sec).

3. Change Sampling Rates: The script then demonstrates audio playback with different sampling rates (16K, 24K, 36K, and 44K samples/sec) to illustrate the impact of sampling rate on audio quality.

4. High Sampling Rates: It further explores audio playback with higher sampling rates (80K and 160K samples/sec) to demonstrate the higher audio quality achieved with increased sampling rates.

5. Scaling Audio: The script scales the audio by multiplying it with a coefficient. Users can adjust the coefficient to make the sample values smaller or larger.

6. Resampling Audio: It resamples the audio by copying every other sample, effectively reducing the sampling rate by half.

7. FFT Filter: The script applies a Fast Fourier Transform (FFT) filter to eliminate high-frequency samples. Users can adjust the cutoff frequency to control the filtering effect.

8. Convert to Integers: Assuming 16-bit audio, the script converts the filtered audio values into 16-bit integers.

9. Playback Filtered Audio: Finally, it plays back the filtered audio to showcase the effect of the FFT filter.
