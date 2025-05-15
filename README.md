# balatro-menv

> !NOTICE: Develpment stopped until June 2025.

A development environment for [Balatro](https://www.playbalatro.com/) mods,
providing essential utilities and API definitions to streamline the modding process.

This environment is designed to enhance mod development using the
[Lua Language Server](https://luals.github.io/).

---

## What's Included?

This environment is optimized for modding with
[lovely-injector](https://github.com/ethangreen-dev/lovely-injector) and
[smods](https://github.com/Steamodded/smods) (formerly Steamodded). It includes:

- **love2d API definitions** (`love2d-dev`): Comprehensive API support for LOVE2D.
- **smods definitions** (`smods-dev`): Simplified access to smods functions.
- **Balatro definitions** (`balatro-dev`): Enhances development with Balatro-specific APIs.

> **Note**: This environment requires the Sumneko Lua Language Server.

---

## Usage

To set up this development environment, follow these steps:

1. Clone the repository with submodules:

    ```sh
    git clone --recurse-submodules https://github.com/LnxFCA/balatro-mod-env.git dev

    ```

2. Initialize submodules (if not already done):

    ```sh
    git submodule update --init --recursive
    ```

3. Configure the Lua Language Server by creating a `.luarc.json`
file in the workspace root with the following content:

    ```json
    {
      "$schema": "https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json",
      "workspace.library": [
        "dev/love2d-dev",
        "dev/balatro",
        "dev/balatro-dev",
        "dev/smods/src",
        "dev/smods-dev"
      ],
      "diagnostics.disable": [
        "lowercase-global"
      ],
      "types": {
        "weakUnionCheck": true
      }
    }
    ```

4. Replace `dev` with your repository (clone) folder name if it's different.

5. Extract Balatro's source files into a `balatro` directory within the repository.
Tools like 7zip or p7zip can be used for this step.

For more information on the language server configuration, see:
[https://luals.github.io/wiki/configuration/](https://luals.github.io/wiki/configuration/).

> No additional setup is needed in your mod's source files.

## Linux guide

> This section also applies to WSL (Windows Subsystem for Linux).

This a guide for Linux users on how to use the tools here.

### Requirements

Ensure you have the following tools installed:

- `cargo` for building the `lovely-injector` library.
- A compatible Lua interpreter (if testing Lua code outside of Balatro).
- Love2D (`love`) for running the game.

### Steps

1. Compile lovely:

    ```sh
    cd lovely/crates && cargo build --release
    ```

2. Use provided scripts:

- `install`: Installs mod files for development or release. Include a `VERSION` file for releases.

- `run`: Launches the game with **lovely-injector** and **smods** enabled.

Examples:

- Install for development:
    ```bash
    MODNAME=my-mod-dir ./dev/install
    ```

- Create release files:

    ```bash
    MODNAME=my-mod-dir DESTDIR=/tmp/balatro-mods ./dev/install release
    ```

- Run with **lovely-injector** and **smods** only:

    ```bash
    ./dev/run
    ```

- Run vanilla game:

    ```bash
    NOLOVELY=true ./dev/run
    ```

## License

This project is licensed under the GNU General Public License v3 or later.
However, it includes submodules governed by their own licenses.
Refer to each submodule's directory for specific licensing terms.

- [lovely-injector](https://github.com/ethangreen-dev/lovely-injector)
- [smods](https://github.com/Steamodded/smods)
- [love2d-dev](https://github.com/LuaCATS/love2d.git)

For more information, see the `LICENSE` file in this repository.
