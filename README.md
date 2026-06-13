# MCBE DirectX & V-Sync Fixer

> [!CAUTION]
> **Only supported on Windows x64!**

Fixes issues with DirectX & V-Sync in Minecraft: Bedrock Edition.

## Usage
- Download the latest release:
    - DirectX 12 Disabler: https://github.com/Aetopia/MCBE.DirectX.VSync.Fixer/releases/latest/download/d3d12.dll 
    - V-Sync Fixer: https://github.com/Aetopia/Igneous/MCBE.DirectX.VSync.Fixer/latest/download/vcruntime140_1.dll 

- Run the following command in PowerShell to find where the game is located:

    ```powershell
    & "$ENV:SystemRoot\explorer.exe" "$((Get-AppxPackage "Microsoft.MinecraftUWP").InstallLocation)"
    ```

- Place the dynamic link libraries in the opened folder & launch the game.

## FAQ

#### How can I disable V-Sync?

- Open the following file:

    ```cmd
    %APPDATA%\Minecraft Bedrock\Users\*\games\com.mojang\minecraftpe\options.txt
    ```

- Set `gfx_vsync` to `0`, save the file & launch the game.

## Build
1. Install & update [MSYS2](https://www.msys2.org):

    ```bash
    pacman -Syu --noconfirm
    ```

3. Install [GCC](https://gcc.gnu.org) & [MinHook](https://github.com/TsudaKageyu/minhook):

    ```bash
    pacman -Syu mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-MinHook --noconfirm
    ```


3. Start MSYS2's `UCRT64` environment & run `Build.cmd`.
