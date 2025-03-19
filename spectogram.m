clc; clear; close all;

% Step 1: Load Audio File
[audio, fs] = audioread('audio_file.wav'); % Load audio
audio = mean(audio, 2); % Convert to mono (if stereo)

% Step 2: Compute Spectrogram
window = hamming(1024);  % Window size
overlap = 512;           % Overlapping samples
nfft = 2048;             % FFT points
[S, F, T] = spectrogram(audio, window, overlap, nfft, fs);

% Step 3: Convert to dB Scale
S_db = 20*log10(abs(S) + eps); % Convert magnitude to decibels (avoid log(0))

% Step 4: Plot the Spectrogram
figure;
imagesc(T, F, S_db);   % Display spectrogram
axis xy;               % Flip Y-axis correctly
colormap jet;          % Use jet color map
colorbar;              % Show color scale
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram of Audio');

disp('Spectrogram generated successfully.');
