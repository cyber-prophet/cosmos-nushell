Tendermint subcommands

Usage:
  gaiad tendermint [command]

Available Commands:
  reset-state      Remove all the data and WAL
  show-address     Shows this node's tendermint validator consensus address
  show-node-id     Show this node's ID
  show-validator   Show this node's tendermint validator info
  unsafe-reset-all (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
  version          Print tendermint libraries' version

Flags:
  -h, --help   help for tendermint

Global Flags:
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "gaiad tendermint [command] --help" for more information about a command.
