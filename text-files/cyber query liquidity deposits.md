Query all deposit messages of the liquidity pool batch on the specified pool

If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ cyber query liquidity deposits 1

Usage:
  cyber query liquidity deposits [pool-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for deposits
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
