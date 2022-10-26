Querying commands for the txfees module

Usage:
  osmosisd query txfees [flags]
  osmosisd query txfees [command]

Available Commands:
  base-denom    Query the base fee denom
  denom-pool-id Query the pool id associated with a specific whitelisted fee token
  fee-tokens    Query the list of non-basedenom fee tokens and their associated pool ids

Flags:
  -h, --help   help for txfees

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query txfees [command] --help" for more information about a command.
