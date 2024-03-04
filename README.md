# Realtime_PyAudio_FFT
<p align="center">
  <img src="./assets/teaser.gif">
</p>

### A simple package to do realtime audio analysis in native Python, using PyAudio and Numpy to extract and visualize FFT features from a live audio stream.

### To install & use:
- Install Python v3.10.13 from Python.org- you are not required to add the installation to PATH, however it may come in handy later.
- Download this code using the button in the upper right: "Downlaod as ZIP"
- Locate the directory you downloaded the ZIP file to, and extract it to a new folder.
- Open your device's terminal, and change your root directory to the project folder you just made.
  - In Windows, right click the folder and select the "Copy as path" option.
  - Open a terminal window, and enter `cd "<path>" `. To fill in your path, hit Right Click.
- In the same terminal window, run ` python3 -m pip install -r requirements.txt `
- Wait for the requirements to complete their installation, then run the program using ` python3 -u run_FFT_analyzer.py `

**Requirements:**
` pip install -r requirements.txt `

You also might have to 
`sudo apt install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0` (tested on Ubuntu)

I developped this code on my local machine --> it has not been properly tested on other setups..
If something doesn't work, please first try to fix it yourself and post an issue/solution when appropriate!
* Tested on Ubuntu 18.04
* Other platforms like Mac/Windows should work if PyGame can find your display and Python finds your audio card (these can be tricky with [WSL](https://research.wmz.ninja/articles/2017/11/setting-up-wsl-with-graphics-and-audio.html))
* For Mac OSX (tested on Catalina 10.15.4), please make sure you run with Python downloaded from [Python.org](https://www.python.org/downloads/release/python-377/) (`pygame` doesn't work well with the default/Homebrew Python)

Tested with:
* Python 3.6.3
* [pygame](https://www.pygame.org/wiki/GettingStarted)  --> Version: 1.9.6
* [pyaudio](http://people.csail.mit.edu/hubert/pyaudio/) --> Version: 0.2.11
* [scipy](https://www.scipy.org/install.html)   --> Version: 1.4.1


Alternatively to pyaudio, you can use [sounddevice](https://python-sounddevice.readthedocs.io/en/0.3.15/installation.html) which might be more compatible with Windows/Mac
* just run ` python3 -m pip install sounddevice `
* Tested on Ubuntu 18.04 with sounddevice version 0.3.15
* The code to switch between the two sound interfaces is in the ` __init__ ` function of the Stream_Analyzer class

![Teaser image](./assets/usage.png)

**ToDo:**
* Implement realtime beat detection / melody extraction on top of FFT features (eg using Harmonic/Percussive decomposition)
* The pygame.transform operations sometimes cause weird visual artifacts (boxes) for some resolution settings --> fix??
* Remove the matplotlib dependency since it's only needed for the colormap of the vis..
* Slow bars decay speed currently depends on how often ` .get_audio_features() ` is called --> fix
