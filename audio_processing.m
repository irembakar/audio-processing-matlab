% 1. Open the file and read its data into a vector
[y, Fs] = audioread('file_example.wav');

% 2. Play back the sound with 8K samples/sec
sound(y, 8000);

% pause(length(y) / 8000); % Orijinal süresi kadar bekle

% 3. Repeat step 2 with different sampling rates
fs_values = [16000, 24000, 36000, 44000];
for i = 1:length(fs_values)
    fs = fs_values(i);
    sound(y, fs);
    pause(length(y) / fs);
end

% 4. Repeat step 2 with 80K and 160K samples/sec
fs_values = [80000, 160000];
for i = 1:length(fs_values)
    fs = fs_values(i);
    sound(y, fs);
    pause(length(y) / fs);
end

% 5. Multiply the values of the samples by a coefficient
% Change the coefficient to make the sample values smaller or larger
coefficient = 0.5; % Adjust the coefficient as needed
y_scaled = y * coefficient;
sound(y_scaled, Fs);

% 6. Resample the data by copying every other sample
y_resampled = y(1:2:end); % Copy odd samples
sound(y_resampled, Fs);

% 7. Apply Fast Fourier Transform (FFT) on the samples
Y = fft(y);

% Eliminate high-frequency samples (replace them with zero)
cutoff_frequency = 1000; % Adjust the cutoff frequency as needed
Y(abs(Y) > cutoff_frequency) = 0;

% Apply inverse FFT
y_filtered = ifft(Y);

% Scale the values back to the original range [-1, 1]
y_filtered = y_filtered / max(abs(y_filtered));

% Play back the filtered audio
sound(y_filtered, Fs);

