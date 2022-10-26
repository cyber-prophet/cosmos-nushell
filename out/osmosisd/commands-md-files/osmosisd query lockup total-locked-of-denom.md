Query locked records for a specific denom bigger then duration provided.

Example:
$ osmosisd query lockup total-locked-of-denom <denom>

Usage:
  osmosisd query lockup total-locked-of-denom <denom> [flags]

Flags:
      --height int            Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                  help for total-locked-of-denom
      --min-duration string   The minimum duration of token bonded. e.g. 24h, 168h, 336h (default "336h")
      --node string           <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string         Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
