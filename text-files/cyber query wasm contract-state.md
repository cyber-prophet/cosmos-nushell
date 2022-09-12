Querying commands for the wasm module

Usage:
  cyber query wasm contract-state [flags]
  cyber query wasm contract-state [command]

Aliases:
  contract-state, state, cs, s

Available Commands:
  all         Prints out all internal state of a contract given its address
  raw         Prints out internal state for key of a contract given its address
  smart       Calls contract with given address with query data and prints the returned result

Flags:
  -h, --help   help for contract-state

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query wasm contract-state [command] --help" for more information about a command.
