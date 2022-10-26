Liquidity transaction subcommands

Usage:
  cyber tx liquidity [flags]
  cyber tx liquidity [command]

Available Commands:
  create-pool Create liquidity pool and deposit coins
  deposit     Deposit coins to a liquidity pool
  swap        Swap offer coin with demand coin from the liquidity pool with the given order price
  withdraw    Withdraw pool coin from the specified liquidity pool

Flags:
  -h, --help   help for liquidity

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber tx liquidity [command] --help" for more information about a command.
