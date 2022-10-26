Query the interchain-accounts host submodule packet events for a particular channel and sequence

Usage:
  osmosisd query interchain-accounts host packet-events [channel-id] [sequence] [flags]

Examples:
osmosisd query interchain-accounts host packet-events channel-0 100

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-events
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
