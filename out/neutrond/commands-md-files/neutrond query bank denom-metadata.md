Query the client metadata for all the registered coin denominations

Example:
  To query for the client metadata of all coin denominations use:
  $ neutrond query bank denom-metadata

To query for the client metadata of a specific coin denomination use:
  $ neutrond query bank denom-metadata --denom=[denom]

Usage:
  neutrond query bank denom-metadata [flags]

Flags:
      --denom string    The specific denomination to query client metadata for
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-metadata
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
