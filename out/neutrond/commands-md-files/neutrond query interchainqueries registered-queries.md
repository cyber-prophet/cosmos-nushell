queries all the interchain queries in the module

Usage:
  neutrond query interchainqueries registered-queries [flags]

Flags:
      --connection_id string   (optional) filter by connection id
      --count-total            count total number of records in registered queries to query for
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for registered-queries
      --limit uint             pagination limit of registered queries to query for (default 100)
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint            pagination offset of registered queries to query for
  -o, --output string          Output format (text|json) (default "text")
      --owners stringArray     (optional) filter by query owners
      --page uint              pagination page of registered queries to query for. This sets offset to a multiple of limit (default 1)
      --page-key string        pagination page-key of registered queries to query for
      --reverse                results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
