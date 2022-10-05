Migrate the source genesis into the target version and print to STDOUT.

Example:
$ spacepussy migrate v0.36 /path/to/genesis.json --chain-id=cosmoshub-3 --genesis-time=2019-04-22T17:00:00Z

Usage:
  pussy migrate [target-version] [genesis-file] [flags]

Flags:
      --chain-id string       override chain_id with this flag
      --genesis-time string   override genesis_time with this flag
  -h, --help                  help for migrate

Global Flags:
      --home string         directory for config and data (default "/.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
