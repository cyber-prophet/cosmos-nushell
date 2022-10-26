Query rewards estimation.

Example:
$ osmosisd query incentives rewards-estimation

Usage:
  osmosisd query incentives rewards-estimation [flags]

Flags:
      --end-epoch int     the end epoch number to participate in rewards calculation
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for rewards-estimation
      --lock-ids string   the lock ids to receive rewards, when it is empty, all lock ids of the owner are used
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string     Output format (text|json) (default "text")
      --owner string      Owner to receive rewards, optionally used when lock-ids flag is NOT set

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
