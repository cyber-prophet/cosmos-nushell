Export a derive balances from a provided genesis export
Example:
	osmosisd export-derive-balances ../genesis.json ../snapshot.json

Usage:
  osmosisd export-derive-balances [input-genesis-file] [output-snapshot-json] [flags]

Flags:
      --breakdown-by-pool-ids string   Output a special breakdown for amount LP'd to the provided pools. Usage --breakdown-by-pool-ids=1,2,605
  -h, --help                           help for export-derive-balances

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
