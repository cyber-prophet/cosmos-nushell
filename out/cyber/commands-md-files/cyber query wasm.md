Querying commands for the wasm module

Usage:
  cyber query wasm [flags]
  cyber query wasm [command]

Available Commands:
  code                  Downloads wasm bytecode for given code id
  code-info             Prints out metadata of a code id
  contract              Prints out metadata of a contract given its address
  contract-history      Prints out the code history for a contract given its address
  contract-state        Querying commands for the wasm module
  libwasmvm-version     Get libwasmvm version
  list-code             List all wasm bytecode on the chain
  list-contract-by-code List wasm all bytecode on the chain for given code id
  pinned                List all pinned code ids

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query wasm [command] --help" for more information about a command.
