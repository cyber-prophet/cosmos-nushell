Query account locked records with a specific duration

Usage:
  osmosisd query lockup account-locked-duration <address> <duration> [flags]

Examples:
Query account locked records with a specific duration.
Example:
$ osmosisd query lockup account-locked-duration osmo1yl6hdjhmkf37639730gffanpzndzdpmhxy9ep3 604800s

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for account-locked-duration
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
