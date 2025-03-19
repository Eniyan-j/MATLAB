Handling Unknown Frequency Ranges for Instrument Separation in MATLAB
If the user provides an audio file with unknown frequencies, you need to:

Analyze the Spectrogram to detect dominant frequency components.
Automatically Select a Frequency Range for filtering.
Apply Adaptive Filtering to isolate the dominant instrument.

🛠 Approach
Compute the Spectrogram to analyze the energy distribution.
Detect the Peak Frequency Bands using spectral energy analysis.
Dynamically Apply Band-Pass Filtering based on detected frequency ranges.
Denoise the Signal using Wiener filtering or Spectral Subtraction.
Save the Final Isolated Audio.


How It Works
1. Detects the Dominant Frequency
Computes the spectrogram of the audio.
Finds the frequency with the highest energy.
Dynamically sets a band-pass filter range around the peak frequency.


2. Applies Adaptive Band-Pass Filtering
Extracts the dominant instrument using Butterworth Band-Pass Filtering.
Ensures flexibility across different input audios.

3. Reduces Background Noise
Wiener Filtering smooths out the noise.
Spectral Subtraction removes steady noise like hum or hiss.

4. Saves the Final Isolated Audio
Three output files:
adaptive_bandpass.wav → Band-pass filtered audio.
adaptive_wiener_filtered.wav → Noise-reduced version.
final_separated_audio.wav → Fully processed, clean audio.
