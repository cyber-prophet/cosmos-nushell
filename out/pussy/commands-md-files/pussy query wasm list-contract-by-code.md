List wasm all bytecode on the chain for given code id

Usage:
  pussy query wasm list-contract-by-code [code_id] [flags]

Aliases:
  list-contract-by-code, list-contracts-by-code, list-contracts, contracts, lca

Flags:
      --count-total       count total number of records in list contracts by code to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for list-contract-by-code
      --limit uint        pagination limit of list contracts by code to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list contracts by code to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list contracts by code to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list contracts by code to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
