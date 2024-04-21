Query the relayer counterparty payee on a given channel

Usage:
  cyber query ibc-fee counterparty-payee [channel-id] [relayer] [flags]

Examples:
cyber query ibc-fee counterparty-payee channel-5 cosmos1layxcsmyye0dc0har9sdfzwckaz8sjwlfsj8zs

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for counterparty-payee
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
