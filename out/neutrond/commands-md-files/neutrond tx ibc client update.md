update existing client with a header

Usage:
  neutrond tx ibc client update [client-id] [path/to/header.json] [flags]

Examples:
neutrond tx ibc client update [client-id] [path/to/header.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for update

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
