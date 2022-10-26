Vesting transaction subcommands

Usage:
  osmosisd tx vesting [flags]
  osmosisd tx vesting [command]

Available Commands:
  clawback                        Transfer unvested amount out of a ClawbackVestingAccount.
  create-clawback-vesting-account Create a new vesting account funded with an allocation of tokens, subject to clawback.
  create-cliff-vesting-account    Create a new cliff vesting account funded with an allocation of tokens.
  create-vesting-account          Create a new vesting account funded with an allocation of tokens.

Flags:
  -h, --help   help for vesting

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx vesting [command] --help" for more information about a command.
