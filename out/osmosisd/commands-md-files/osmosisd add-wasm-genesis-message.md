Wasm genesis subcommands

Usage:
  osmosisd add-wasm-genesis-message [flags]
  osmosisd add-wasm-genesis-message [command]

Available Commands:
  execute              Execute a command on a wasm contract
  instantiate-contract Instantiate a wasm contract
  list-codes           Lists all codes from genesis code dump and queued messages
  list-contracts       Lists all contracts from genesis contract dump and queued messages
  store                Upload a wasm binary

Flags:
  -h, --help   help for add-wasm-genesis-message

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd add-wasm-genesis-message [command] --help" for more information about a command.
