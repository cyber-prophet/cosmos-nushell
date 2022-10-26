lockup transactions subcommands

Usage:
  osmosisd tx lockup [flags]
  osmosisd tx lockup [command]

Available Commands:
  begin-unlock-by-id  begin unlock individual period lock by ID
  begin-unlock-tokens begin unlock not unlocking tokens from lockup pool for an account
  lock-tokens         lock tokens into lockup pool from user account

Flags:
  -h, --help   help for lockup

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx lockup [command] --help" for more information about a command.
