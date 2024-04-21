IBC client query subcommands

Usage:
  cyber query ibc client [flags]
  cyber query ibc client [command]

Available Commands:
  consensus-state         Query the consensus state of a client at a given height
  consensus-state-heights Query the heights of all consensus states of a client.
  consensus-states        Query all the consensus states of a client.
  header                  Query the latest header of the running chain
  params                  Query the current ibc client parameters
  self-consensus-state    Query the self consensus state for this chain
  state                   Query a client state
  states                  Query all available light clients
  status                  Query client status

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query ibc client [command] --help" for more information about a command.
