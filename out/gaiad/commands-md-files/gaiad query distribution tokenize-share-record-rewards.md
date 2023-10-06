Query the query tokenize share record rewards.

Example:
$ gaiad query distribution tokenize-share-record-rewards cosmos1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  gaiad query distribution tokenize-share-record-rewards [owner] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for tokenize-share-record-rewards
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
