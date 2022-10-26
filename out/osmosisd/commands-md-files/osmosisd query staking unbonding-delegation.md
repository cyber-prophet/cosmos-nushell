Query unbonding delegations for an individual delegator on an individual validator.

Example:
$ osmosisd query staking unbonding-delegation osmo1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p osmovaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  osmosisd query staking unbonding-delegation [delegator-addr] [validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for unbonding-delegation
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
