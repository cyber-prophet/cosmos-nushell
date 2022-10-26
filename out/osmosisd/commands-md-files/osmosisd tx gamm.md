Generalized automated market maker transaction subcommands

Usage:
  osmosisd tx gamm [flags]
  osmosisd tx gamm [command]

Available Commands:
  create-pool                 create a new pool and provide the liquidity to it
  exit-pool                   exit a new pool and withdraw the liquidity from it
  exit-swap-extern-amount-out exit swap extern amount out
  exit-swap-share-amount-in   exit swap share amount in
  join-pool                   join a new pool and provide the liquidity to it
  join-swap-extern-amount-in  join swap extern amount in
  join-swap-share-amount-out  join swap share amount out
  swap-exact-amount-in        swap exact amount in
  swap-exact-amount-out       swap exact amount out

Flags:
  -h, --help   help for gamm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx gamm [command] --help" for more information about a command.
