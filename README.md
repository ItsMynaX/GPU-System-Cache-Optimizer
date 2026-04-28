# (MYNA X SYSTEM) GPU VRAM & Cache Optimizer

A lightweight, high-performance utility designed to optimize GPU memory (VRAM) and clear system bottlenecks without relying on Windows hotkeys. Perfect for **Windows Lite** users, gamers, and developers.

## 🚀 Features

* **VRAM Reset:** Force-refreshes the Desktop Window Manager (DWM) to flush leaked video memory.
* **Safe Cache Cleaning:** Safely removes temporary user files and flushes DNS without affecting open applications.
* **Deep Cache Cleaning:** Targets DirectX Shader Caches and Windows Prefetch files to resolve micro-stutters in games.
* **No Hotkeys Needed:** Works via system process management, ensuring compatibility with stripped-down Windows versions.
* **Auto-Elevation:** Automatically requests Administrator privileges to ensure commands execute successfully.

## 🛠️ How to Use

1.  **Download/Copy** the `Cleaner.bat` file.
2.  **Right-click** the file and select **Run as Administrator** (or let the script prompt you).
3.  Select an option from the menu:
    * `1`: Use this if your screen feels laggy or VRAM is full.
    * `2`: Use this for general maintenance.
    * `3`: Use this if you experience stutters in games like *Roblox* or *Red Alert 2*.
4.  Follow the on-screen prompts.

## ⚠️ Important Notes

* **Screen Flicker:** When resetting VRAM (Option 1), your screen will go black for 1-2 seconds. This is normal as the graphics driver re-initializes.
* **Permissions:** This script requires Administrator rights to access system folders like `C:\Windows\Temp` and to manage the `dwm.exe` process.

## 📂 Technical Details

The script targets the following directories for deep cleaning:
- `%LocalAppData%\Microsoft\DirectX Shader Cache`
- `%LocalAppData%\NVIDIA\DXCache`
- `%LocalAppData%\AMD\DxCache`
- `C:\Windows\Prefetch`

---
*Developed for the MYNA X SYSTEM ecosystem.*
