tokenfactory transactions subcommands

Usage:
  osmosisd tx tokenfactory [flags]
  osmosisd tx tokenfactory [command]

Available Commands:
  burn         Burn tokens from an address. Must have admin authority to do so.
  change-admin Changes the admin address for a factory-created denom. Must have admin authority to do so.
  create-denom create a new denom from an account
  mint         Mint a denom to an address. Must have admin authority to do so.

Flags:
  -h, --help   help for tokenfactory

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx tokenfactory [command] --help" for more information about a command.
