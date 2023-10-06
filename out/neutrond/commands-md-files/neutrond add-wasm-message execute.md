Execute a command on a wasm contract

Usage:
  neutrond add-wasm-message execute [contract_addr_bech32] [json_encoded_send_args] --run-as [address] --amount [coins,optional] [flags]

Flags:
      --amount string            Coins to send to the contract along with command
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for execute
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --run-as string            The address that pays the funds.

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
