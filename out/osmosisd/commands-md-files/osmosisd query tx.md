Example:
$ osmosisd query tx <hash>
$ osmosisd query tx --type=acc_seq <addr>/<sequence>
$ osmosisd query tx --type=signature <sig1_base64>,<sig2_base64...>

Usage:
  osmosisd query tx --type=[hash|acc_seq|signature] [hash|acc_seq|signature] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for tx
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --type string     The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
