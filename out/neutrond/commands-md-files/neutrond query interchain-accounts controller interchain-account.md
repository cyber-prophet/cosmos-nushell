Query the controller submodule for the interchain account address for a given owner on a particular connection

Usage:
  neutrond query interchain-accounts controller interchain-account [owner] [connection-id] [flags]

Examples:
neutrond query interchain-accounts controller interchain-account cosmos1layxcsmyye0dc0har9sdfzwckaz8sjwlfsj8zs connection-0

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for interchain-account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
