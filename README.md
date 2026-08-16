<p align="center">
	<img src="logo.png" width="376" height="128" alt="WinX Logo" />  
</p>

# WinX

WinX is an Android application that lets you to run Windows (x86_64) applications with Wine and Box86/Box64.

It is a fork of [Winlator CMOD](https://github.com/Pipetto-crypto/winlator) (itself based on [Winlator](https://github.com/brunodev85/winlator) by brunodev85), focused on up-to-date graphics/runtime components, game-specific emulator presets and a dark-first UI.

# What's New in WinX

### Updated Components
- **Box64 / WoWBox64**: `0.3.7` → `0.4.4`
- **FEXCore**: `2508` → `2608`
- **DXVK**: added `3.0.2-binsem-arm64ec-gplasync` (new default on non-Mali GPUs)
- **VKD3D**: added `vkd3d-proton-arm64ec-3.0.1` (replaces vkd3d `2.8`)
- **Turnip**: `turnip25.1.0` → `turnip-mainline-V31`
- **DDraw wrappers**: added **D7VK** and **dgVoodoo** alongside CnC-DDraw/Dd7To9

### New Emulator Presets
- **Box64**: new *Extreme*, *Unity*, *Unity Mono Bleeding Edge* and *Denuvo* presets (in addition to Compatibility/Intermediate/Performance)
- **FEXCore**: new *Denuvo* preset (TSO disabled, full SMC checks, hypervisor bit hidden)

### New Defaults (performance-first)
- Default audio driver: **PulseAudio** (was ALSA)
- Default Box64/FEXCore presets: **Performance** (was Compatibility/Intermediate)
- DXVK defaults: **async enabled with async cache**, framerate limit `60`, video memory `4096` MB
- New default env vars: `VKD3D_SHADER_MODEL=6_6`, `PULSE_LATENCY_MSEC=108`, `DXVK_DISABLE_TIMELINE_SEMAPHORES=1`, leaner `DXVK_HUD`

### UI/UX
- **Dark mode enabled by default** across the app, dialogs and the Wine desktop theme
- True-black (AMOLED) backgrounds for the dark theme
- App now opens on the **Shortcuts** screen instead of Containers

### Bug Fixes
- Fixed crash (SIGABRT) in Adrenotools when querying a missing/unknown driver (`meta.json` guard)
- Content install now correctly reports failure when the final rename fails, instead of falsely reporting success
- `Binding.fromString()` no longer throws on `null` input
- Downloads now send a `User-Agent` header (fixes `403` from api.github.com)

### Other
- Downloadable contents hub switched to [WinlatorWCPHub](https://github.com/Arihany/WinlatorWCPHub)

# Installation

1. Download and install the APK (`WinX-Bionic-*.apk`) from [GitHub Releases](https://github.com/updeshxp/WinX/releases)
2. Launch the app and wait for the installation process to finish

----

[![Play on Youtube](https://img.youtube.com/vi/8PKhmT7B3Xo/1.jpg)](https://www.youtube.com/watch?v=8PKhmT7B3Xo)
[![Play on Youtube](https://img.youtube.com/vi/9E4wnKf2OsI/2.jpg)](https://www.youtube.com/watch?v=9E4wnKf2OsI)
[![Play on Youtube](https://img.youtube.com/vi/czEn4uT3Ja8/2.jpg)](https://www.youtube.com/watch?v=czEn4uT3Ja8)
[![Play on Youtube](https://img.youtube.com/vi/eD36nxfT_Z0/2.jpg)](https://www.youtube.com/watch?v=eD36nxfT_Z0)

----

# Useful Tips

- If you are experiencing performance issues, try changing the Box86/Box64 preset in Container Settings -> Advanced Tab.
- For applications that use .NET Framework, try installing Wine Mono found in Start Menu -> System Tools.
- If some older games don't open, try adding the environment variable MESA_EXTENSION_MAX_YEAR=2003 in Container Settings -> Environment Variables.
- Try running the games using the shortcut on the WinX home screen, there you can define individual settings for each game.
- To speed up the installers, try changing the Box86/Box64 preset to Intermediate in Container Settings -> Advanced Tab.
- For Denuvo-protected games, try the new Denuvo Box64/FEXCore presets; for Unity games, try the Unity presets.

# Credits and Third-party apps
- Ubuntu RootFs ([Focal Fossa](https://releases.ubuntu.com/focal))
- Wine ([winehq.org](https://www.winehq.org/))
- Box86/Box64 by [ptitseb](https://github.com/ptitSeb)
- PRoot ([proot-me.github.io](https://proot-me.github.io))
- Mesa (Turnip/Zink/VirGL) ([mesa3d.org](https://www.mesa3d.org))
- DXVK ([github.com/doitsujin/dxvk](https://github.com/doitsujin/dxvk))
- VKD3D-Proton ([github.com/HansKristian-Work/vkd3d-proton](https://github.com/HansKristian-Work/vkd3d-proton))
- D8VK ([github.com/AlpyneDreams/d8vk](https://github.com/AlpyneDreams/d8vk))
- D7VK ([github.com/AlpyneDreams/d8vk](https://github.com/AlpyneDreams/d8vk))
- dgVoodoo ([dege.freeweb.hu](http://dege.freeweb.hu/dgVoodoo2))
- CNC DDraw ([github.com/FunkyFr3sh/cnc-ddraw](https://github.com/FunkyFr3sh/cnc-ddraw))
- FEX-Emu ([github.com/FEX-Emu/FEX](https://github.com/FEX-Emu/FEX))

WinX is based on the work of [brunodev85](https://github.com/brunodev85) (Winlator), [coffincolors](https://github.com/coffincolors) (Winlator CMOD) and [Pipetto-crypto](https://github.com/Pipetto-crypto) (Winlator fork).

Many thanks to [ptitSeb](https://github.com/ptitSeb) (Box86/Box64), [Danylo](https://blogs.igalia.com/dpiliaiev/tags/mesa/) (Turnip), [alexvorxx](https://github.com/alexvorxx) (Mods/Tips) and others.
Thank you to all the people who believe in this project.