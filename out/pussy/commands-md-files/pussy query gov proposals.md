Query for a all paginated proposals that match optional filters:

Example:
$ spacepussy query gov proposals --depositor cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk
$ spacepussy query gov proposals --voter cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk
$ spacepussy query gov proposals --status (DepositPeriod|VotingPeriod|Passed|Rejected)
$ spacepussy query gov proposals --page=2 --limit=100

Usage:
  pussy query gov proposals [flags]

Flags:
      --count-total        count total number of records in proposals to query for
      --depositor string   (optional) filter by proposals deposited on by depositor
      --height int         Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help               help for proposals
      --limit uint         pagination limit of proposals to query for (default 100)
      --node string        <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint        pagination offset of proposals to query for
  -o, --output string      Output format (text|json) (default "text")
      --page uint          pagination page of proposals to query for. This sets offset to a multiple of limit (default 1)
      --page-key string    pagination page-key of proposals to query for
      --reverse            results are sorted in descending order
      --status string      (optional) filter proposals by proposal status, status: deposit_period/voting_period/passed/rejected
      --voter string       (optional) filter by proposals voted on by voted

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
