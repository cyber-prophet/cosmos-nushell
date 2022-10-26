Get the full tendermint validator set at given height

Usage:
  pussy query tendermint-validator-set [height] [flags]

Flags:
  -h, --help                     help for tendermint-validator-set
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --limit int                Query number of results returned per page (default 100)
  -n, --node string              Node to connect to (default "tcp://localhost:26657")
      --page int                 Query a specific page of paginated results (default 1)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
