Calls contract with given address with query data and prints the returned result

Usage:
  cyber query wasm contract-state smart [bech32_address] [query] [flags]

Flags:
      --ascii           ascii encoded query argument
      --b64             base64 encoded query argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for smart
      --hex             hex encoded  query argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
