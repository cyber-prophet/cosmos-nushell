Query the ibc-fee enabled status of a channel

Usage:
  cyber query ibc-fee channel [port-id] [channel-id] [flags]

Examples:
cyber query ibc-fee channel transfer channel-6

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for channel
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
