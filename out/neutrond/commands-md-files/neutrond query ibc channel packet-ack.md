Query a packet acknowledgement

Usage:
  neutrond query ibc channel packet-ack [port-id] [channel-id] [sequence] [flags]

Examples:
neutrond query ibc channel packet-ack [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-ack
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
