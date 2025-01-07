# balatro-mod-env

A mod development environment for [Balatro](https://www.playbalatro.com/)
that I use for mod development.

This environment provides the necessary utilities and API definitions for
a good modding experience using [Visual Studio Code](https://code.visualstudio.com/).

## What's included?

This environment is mainly focused on mod development with
[lovely-injector](https://github.com/ethangreen-dev/lovely-injector) and
[smods](https://github.com/Steamodded/smods) (Previously called Steamodded).

- **love2d** API definitions, from LuaCATS. See `love2d-dev`.
- **smods** definitions. See `smods-dev`.
- **balatro** definitions. See `balatro-dev`.
- **Visual Studio Code** workspace configuration.

> NOTE: This environment is meant to be used with Sumneko's Lua Language Server.

## Usage

To start using this development environment, you first need to clone this repository
and its submodules inside your workspace:

```sh
git clone --recurse-submodules https://github.com/LnxFCA/balatro-mod-dev.git dev
```

Git submodules:

```sh
git submodule update --init --recursive
```

After successfully cloning the repository, you must append the settings on the
[`.vscode/settings.json`](.vscode/settings.json) file to your workspace configuration.

You can change the settings there to your liking, pay attention to the
`Lua.workspace.library` setting. Depending on where you cloned the repository
you must adjust it.
If you use the exact command indicated above, you don't need to change anything.

Once you have finishing setting up the configuration, you only need to extract
the Balatro's source files and put them inside a directory called `balatro`.
You can do that by using `7zip`, `bsdtar`, or `p7zip`.

> After you finish the setup, you're ready to go. You don't need to include anything
> in your mod source files.

## Linux guide

> The information here also applies to WSL (Windows Subsystem for Linux).

This a guide for Linux users on how to use the tools here.

Before using the scripts provided by this repository, you must first compile
`lovely`. You can compile it like any other cargo library:

```sh
cd lovely/crates && cargo build --release
```

After you compile the `lovely-injector` library, you're ready to use
the two scripts provided by this repository:

- `install`: This script is used to install the mod files. This is useful when developing
and testing the mod. You can also use it to create the release files, just
remember to include a `VERSION` file with a valid version number inside your
mod folder.

- `run`: This runs the game with lovely-injector enabled and ensures that `smods` is
installed correctly. This script relies on `install` to install the mod files.
before using this script, you must set the `MODNAME` environment variable to a valid
mod value.

Example:

```sh
MODNAME=my-mod-dir ./dev/run # only works if this repository is cloned as `dev`
```

The above line will install the mod files and execute the game with
`lovely` and `smods` enabled.

## LICENSE

This repository is licensed under the  the GNU General Public License version 3 or later. However, it includes other projects that may have different licenses. Please refer to the respective project
directory for their licensing information.

A copy of the license can be found in the `LICENSE` file in the root of this repository.

### Projects used

- [lovely-injector](https://github.com/ethangreen-dev/lovely-injector) - Refer to its repository for license details.
- [smods](https://github.com/Steamodded/smods) - Refer to its repository for license details.
- [love2d-dev](https://github.com/LuaCATS/love2d.git) - Refer to its repository for license details.
