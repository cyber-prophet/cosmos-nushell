Wasm transaction subcommands

Usage:
  cyber tx wasm [flags]
  cyber tx wasm [command]

Available Commands:
  clear-contract-admin      Clears admin for a contract to prevent further migrations
  execute                   Execute a command on a wasm contract
  grant                     Grant authorization to an address
  instantiate               Instantiate a wasm contract
  instantiate2              Instantiate a wasm contract with predictable address
  migrate                   Migrate a wasm contract to a new code version
  set-contract-admin        Set new admin for a contract
  store                     Upload a wasm binary
  update-instantiate-config Update instantiate config for a codeID

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber tx wasm [command] --help" for more information about a command.
