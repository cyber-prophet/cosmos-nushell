Query for total number of liquid staked tokens.
Liquid staked tokens are identified as either a tokenized delegation, 
or tokens owned by an interchain account.
Example:
$ gaiad query staking total-liquid-staked

Usage:
  gaiad query staking total-liquid-staked [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for total-liquid-staked
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
