Querying commands for the interchainqueries module

Usage:
  neutrond query interchainqueries [flags]
  neutrond query interchainqueries [command]

Available Commands:
  params                   shows the parameters of the module
  query-last-remote-height queries last remote height by connection id
  query-result             queries result for registered query
  registered-queries       queries all the interchain queries in the module
  registered-query         queries all the interchain queries in the module

Flags:
  -h, --help   help for interchainqueries

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchainqueries [command] --help" for more information about a command.
