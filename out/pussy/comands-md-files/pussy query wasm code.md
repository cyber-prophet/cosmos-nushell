Downloads wasm bytecode for given code id

Usage:
  pussy query wasm code [code_id] [output filename] [flags]

Aliases:
  code, source-code, source

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for code
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
