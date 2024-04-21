Query for all of the unrelayed incentivized packets and associated fees across all channels.

Usage:
  cyber query ibc-fee packets [flags]

Examples:
cyber query ibc-fee packets

Flags:
      --count-total       count total number of records in packets to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for packets
      --limit uint        pagination limit of packets to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of packets to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of packets to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of packets to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
