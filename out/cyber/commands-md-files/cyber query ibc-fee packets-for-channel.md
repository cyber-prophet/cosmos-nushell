Query for all of the unrelayed incentivized packets on a given channel. These are packets that have not yet been relayed.

Usage:
  cyber query ibc-fee packets-for-channel [port-id] [channel-id] [flags]

Examples:
cyber query ibc-fee packets-for-channel

Flags:
      --count-total       count total number of records in packets-for-channel to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for packets-for-channel
      --limit uint        pagination limit of packets-for-channel to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of packets-for-channel to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of packets-for-channel to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of packets-for-channel to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
