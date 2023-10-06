Tool for helping with debugging your application

Usage:
  neutrond debug [flags]
  neutrond debug [command]

Available Commands:
  addr                      Convert an address between hex and bech32
  generate-contract-address Generates contract address for the given instance id and code id
  pubkey                    Decode a pubkey from proto JSON
  raw-bytes                 Convert raw bytes output (eg. [10 21 13 255]) to hex

Flags:
  -h, --help   help for debug

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond debug [command] --help" for more information about a command.
