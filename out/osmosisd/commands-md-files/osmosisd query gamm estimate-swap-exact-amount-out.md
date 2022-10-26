Query estimate-swap-exact-amount-out.
Example:
$ osmosisd query gamm estimate-swap-exact-amount-out 1 osm11vmx8jtggpd9u7qr0t8vxclycz85u925sazglr7 stake --swap-route-pool-ids=2 --swap-route-pool-ids=3

Usage:
  osmosisd query gamm estimate-swap-exact-amount-out <poolID> <sender> <tokenOut> [flags]

Flags:
      --height int                        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                              help for estimate-swap-exact-amount-out
      --node string                       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string                     Output format (text|json) (default "text")
      --swap-route-denoms stringArray     swap route amount
      --swap-route-pool-ids stringArray   swap route pool id

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
