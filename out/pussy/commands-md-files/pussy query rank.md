Querying commands for the rank module

Usage:
  pussy query rank [flags]
  pussy query rank [command]

Available Commands:
  backlinks    Query backlinks of given particle
  is-exist     Query is link exist between particles for given account
  is-exist-any Query is any link exist between particles
  karma        Query the current karma of given neuron
  negentropy   Query the current negentropy of given particle
  negentropy   Query the current negentropy of whole graph
  params       Query the current rank parameters
  rank         Query the current rank of given particle
  search       Query search of given particle
  top          Query top

Flags:
  -h, --help   help for rank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query rank [command] --help" for more information about a command.
