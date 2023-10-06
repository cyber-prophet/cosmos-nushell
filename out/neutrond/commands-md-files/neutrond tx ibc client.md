IBC client transaction subcommands

Usage:
  neutrond tx ibc client [flags]
  neutrond tx ibc client [command]

Available Commands:
  create       create new IBC client
  misbehaviour submit a client misbehaviour
  update       update existing client with a header
  upgrade      upgrade an IBC client

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx ibc client [command] --help" for more information about a command.
