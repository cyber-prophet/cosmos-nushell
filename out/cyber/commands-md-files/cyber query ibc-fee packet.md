Query for an unrelayed incentivized packet by port-id, channel-id and packet sequence.

Usage:
  cyber query ibc-fee packet [port-id] [channel-id] [sequence] [flags]

Examples:
cyber query ibc-fee packet

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
