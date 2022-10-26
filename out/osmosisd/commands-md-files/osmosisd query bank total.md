Query total supply of coins that are held by accounts in the chain.

Example:
  $ osmosisd query bank total

To query for the total supply of a specific coin denomination use:
  $ osmosisd query bank total --denom=[denom]

Usage:
  osmosisd query bank total [flags]

Flags:
      --denom string    The specific balance denomination to query for
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for total
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
