Error: couldn't make client config: mkdir /.pussy: read-only file system
Usage:
  pussy query ibc [flags]
  pussy query ibc [command]

Available Commands:
  channel     IBC channel query subcommands
  client      IBC client query subcommands
  connection  IBC connection query subcommands

Flags:
  -h, --help   help for ibc

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc [command] --help" for more information about a command.
