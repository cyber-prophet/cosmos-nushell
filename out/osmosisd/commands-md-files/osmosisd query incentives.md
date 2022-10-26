Querying commands for the incentives module

Usage:
  osmosisd query incentives [flags]
  osmosisd query incentives [command]

Available Commands:
  active-gauges             Query active gauges
  active-gauges-per-denom   Query active gauges per denom
  distributed-coins         Query coins distributed so far
  gauge-by-id               Query gauge by id.
  gauges                    Query available gauges
  rewards-estimation        Query rewards estimation
  to-distribute-coins       Query coins that is going to be distributed
  upcoming-gauges           Query scheduled gauges
  upcoming-gauges-per-denom Query scheduled gauges per denom

Flags:
  -h, --help   help for incentives

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query incentives [command] --help" for more information about a command.
