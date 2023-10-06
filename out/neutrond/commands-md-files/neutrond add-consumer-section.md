ONLY FOR TESTING PURPOSES! Modifies genesis so that chain can be started locally with one node.

Usage:
  neutrond add-consumer-section [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for add-consumer-section
      --home string     The application home directory (default "/Users/user/.neutrond")
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
