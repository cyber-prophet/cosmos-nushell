Query client activity status. Any client without an 'Active' status is considered inactive

Usage:
  gaiad query ibc client status [client-id] [flags]

Examples:
gaiad query ibc client status [client-id]

Flags:
  -h, --help   help for status

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
