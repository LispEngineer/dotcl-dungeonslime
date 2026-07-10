# Enabling Audio Support under WSL2 / Ubuntu 24.04 for MonoGame

This guide explains how to configure and resolve audio initialization issues when running MonoGame games (such as DungeonSlime) on Ubuntu 24.04 LTS under Windows Subsystem for Linux (WSL2 / WSLg).

---

## 1. Symptom

When running tests or launching the game (e.g. via `make test` or `make run`), the application crashes upon loading or playing audio assets with an exception similar to:

```
Unhandled exception. DotCL.LispErrorException: DOTNET:STATIC Microsoft.Xna.Framework.Audio.SoundEffect.FromFile: OpenAL device could not be initialized, see console output for details.
```

---

## 2. Diagnostics

By running the game with OpenAL Soft logging enabled:

```bash
ALSOFT_LOGLEVEL=3 make test
```

You may observe the following warning and error lines in the terminal:

```
[ALSOFT] (WW) Failed to load libpipewire-0.3.so.0
[ALSOFT] (WW) Failed to initialize backend "pipewire"
[ALSOFT] (WW) Failed to load libpulse.so.0
[ALSOFT] (WW) Failed to initialize backend "pulse"
[ALSOFT] (WW) Failed to load libasound.so.2
[ALSOFT] (WW) Failed to initialize backend "alsa"
...
[ALSOFT] (WW) Failed to open playback device: Could not open /dev/dsp: No such file or directory
```

---

## 3. Root Cause

MonoGame's DesktopGL target bundles the OpenAL Soft library (`libopenal.so`) to remain cross-platform. At runtime, this library dynamically loads client libraries for system audio servers installed in the host OS (such as ALSA, PulseAudio, or PipeWire).

In a clean Ubuntu 24.04 installation under WSL, these client libraries (`libpulse.so.0`, `libasound.so.2`, `libpipewire-0.3.so.0`) are not installed. Therefore, OpenAL cannot establish a channel to stream sound to the WSLg system sound server.

WSLg automatically hosts a PulseAudio sound server inside the subsystem, linked to the environment variable:

```bash
PULSE_SERVER=unix:/mnt/wslg/PulseServer
```

To route audio, OpenAL only needs the client libraries installed on the Ubuntu filesystem so it can connect to this Unix socket.

---

## 4. Resolution

The actual packages I installed are:
```bash
sudo apt install -y pipewire pipewire-audio-client-libraries libspa-0.2-bluetooth wireplumber
```

After that `make test` and `make run` worked fine. The game even showed up on my desktop
(using Windows 11 WSL as of 2026-07-09).

### Gemini's Suggestion
Install the missing system-level client libraries via `apt`. Run the following command in your WSL Ubuntu shell:

```bash
sudo apt update
sudo apt install -y libpulse0 libasound2t64 libpipewire-0.3-0t64
```

Alternatively, you can install the OpenAL development package, which will pull in all required sound subsystem dependencies automatically:

```bash
sudo apt update
sudo apt install -y libopenal-dev
```

### Note on Ubuntu 24.04 (Noble Numbat) Package Names
In Ubuntu 24.04, package names have been updated due to the 64-bit `time_t` transition:
*   `libasound2` is now **`libasound2t64`**
*   `libpipewire-0.3-0` is now **`libpipewire-0.3-0t64`**
*   `libpulse0` remains standard.

---

## 5. Verification

After installing the packages:

1.  Verify the environment has `PULSE_SERVER` defined:
    ```bash
    echo $PULSE_SERVER
    # Should output: unix:/mnt/wslg/PulseServer
    ```
2.  Run the game's test suite to verify OpenAL initializes successfully:
    ```bash
    make test
    ```
    The audio tests should now print `[PASS]` for all asset loads.
