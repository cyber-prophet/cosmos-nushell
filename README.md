# Cosmos sdk CLI completions for Nushell

![cosmos-nushell2](https://github.com/cyber-prophet/cosmos-nushell/assets/4896754/8fb11a5d-2805-4896-87bf-44561d2c4e0c)

## Installation

In [Nushell](https://www.nushell.sh/):

- `git clone https://github.com/cyber-prophet/cosmos-nushell`
- `cd cosmos-nushell`
- `overlay use out/neutrond/neutrond_nu_completions.nu`

## Use 

Start typing executable name, for example `neutrond`, hit `tab`: check completions.

For the best experience I suggest to set `$env.config.completions.partial = true`

## Already parsed completions

In this repository you can find:
- [Universal Jupyter Notebook](https://github.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/blob/master/cyber-cli-bash-parsing.ipynb) for parsing Cosmos-SDK CLI-s (tested on go-cyber, pussy, gaiad) commands and composing nushell completions file (that can be used as an overlay or as a module in a nushell).
- [Ready to use](https://github.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/tree/master/out) completions for Nushell:
  - [cyber](https://raw.githubusercontent.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/master/out/cyber/cyber_nu_completions.nu)
  - [pussy](https://raw.githubusercontent.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/master/out/pussy/pussy_nu_completions.nu)
  - [gaiad](https://raw.githubusercontent.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/master/out/gaiad/gaiad_nu_completions.nu)
  - [osmosisd](https://raw.githubusercontent.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/master/out/osmosisd/osmosisd_nu_completions.nu)
  - [neutrond](https://raw.githubusercontent.com/cyber-prophet/cosmos-sdk-CLI-completions-for-nushell/master/out/neutrond/neutrond_nu_completions.nu)

## Parsing completions

Use `cyber-cli-bash-parsing.ipynb`, set the executable name, run.
