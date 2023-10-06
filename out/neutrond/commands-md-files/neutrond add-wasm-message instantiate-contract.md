Instantiate a wasm contract

Usage:
  neutrond add-wasm-message instantiate-contract [code_id_int64] [json_encoded_init_args] --label [text] --run-as [address] --admin [address,optional] --amount [coins,optional] [flags]

Flags:
      --admin string             Address or key name of an admin
      --amount string            Coins to send to the contract during instantiation
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for instantiate-contract
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --label string             A human-readable name for this contract in lists
      --no-admin                 You must set this explicitly if you don't want an admin
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --run-as string            The address that pays the init funds. It is the creator of the contract.

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
