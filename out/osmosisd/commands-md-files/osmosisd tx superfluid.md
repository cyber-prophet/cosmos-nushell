superfluid transactions subcommands

Usage:
  osmosisd tx superfluid [flags]
  osmosisd tx superfluid [command]

Available Commands:
  delegate                     superfluid delegate a lock to a validator
  lock-and-superfluid-delegate lock and superfluid delegate
  unbond-lock                  unbond lock that has been superfluid staked
  undelegate                   superfluid undelegate a lock from a validator
  unpool-whitelisted-pool      unpool whitelisted pool

Flags:
  -h, --help   help for superfluid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx superfluid [command] --help" for more information about a command.
