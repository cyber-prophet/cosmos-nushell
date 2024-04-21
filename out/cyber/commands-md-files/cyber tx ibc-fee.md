IBC relayer incentivization transaction subcommands

Usage:
  cyber tx ibc-fee [flags]
  cyber tx ibc-fee [command]

Available Commands:
  pay-packet-fee              Pay a fee to incentivize an existing IBC packet
  register-counterparty-payee Register a counterparty payee address on a given channel.
  register-payee              Register a payee on a given channel.

Flags:
  -h, --help   help for ibc-fee

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber tx ibc-fee [command] --help" for more information about a command.
