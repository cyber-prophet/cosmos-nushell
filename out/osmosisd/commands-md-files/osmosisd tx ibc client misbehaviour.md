submit a client misbehaviour to prevent future updates

Usage:
  osmosisd tx ibc client misbehaviour [path/to/misbehaviour.json] [flags]

Examples:
osmosisd tx ibc client misbehaviour [path/to/misbehaviour.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for misbehaviour

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
