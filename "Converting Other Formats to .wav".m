[audio, fs] = audioread('input.mp3'); % Read MP3 file
audiowrite('output.wav', audio, fs); % Convert to WAV
