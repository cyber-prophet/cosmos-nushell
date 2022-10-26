Bank transaction subcommands

Usage:
  cyber tx bank [flags]
  cyber tx bank [command]

Available Commands:
  send        Send funds from one account to another. Note, the'--from' flag is
ignored as it is implied from [from_key_or_address].

Flags:
  -h, --help   help for bank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber tx bank [command] --help" for more information about a command.
