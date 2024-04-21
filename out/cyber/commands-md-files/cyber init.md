Initialize validators's and node's configuration files.

Usage:
  cyber init [moniker] [flags]

Flags:
      --chain-id string   genesis file chain-id, if left blank will be randomly created
  -h, --help              help for init
      --home string       node's home directory (default "/Users/user//.cyber")
  -o, --overwrite         overwrite the genesis.json file
      --recover           provide seed phrase to recover existing key instead of creating

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
