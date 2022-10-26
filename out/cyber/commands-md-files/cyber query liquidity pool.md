Query details of a liquidity pool
Example:
$ cyber query liquidity pool 1

Example (with pool coin denom):
$ cyber query liquidity pool --pool-coin-denom=[denom]

Example (with reserve acc):
$ cyber query liquidity pool --reserve-acc=[address]

Usage:
  cyber query liquidity pool [pool-id] [flags]

Flags:
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for pool
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --pool-coin-denom string   The denomination of the pool coin
      --reserve-acc string       The Bech32 address of the reserve account

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
