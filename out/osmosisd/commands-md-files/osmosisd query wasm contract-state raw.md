Prints out internal state for of a contract given its address

Usage:
  osmosisd query wasm contract-state raw [bech32_address] [key] [flags]

Flags:
      --ascii           ascii encoded key argument
      --b64             base64 encoded key argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for raw
      --hex             hex encoded  key argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
