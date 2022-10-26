Distribution transactions subcommands

Usage:
  osmosisd tx distribution [flags]
  osmosisd tx distribution [command]

Available Commands:
  fund-community-pool  Funds the community pool with the specified amount
  set-withdraw-addr    change the default withdraw address for rewards associated with an address
  withdraw-all-rewards withdraw all delegations rewards for a delegator
  withdraw-rewards     Withdraw rewards from a given delegation address, and optionally withdraw validator commission if the delegation address given is a validator operator

Flags:
  -h, --help   help for distribution

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx distribution [command] --help" for more information about a command.
