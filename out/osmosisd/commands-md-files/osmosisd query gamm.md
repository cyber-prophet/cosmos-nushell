Querying commands for the gamm module

Usage:
  osmosisd query gamm [flags]
  osmosisd query gamm [command]

Available Commands:
  estimate-swap-exact-amount-in  Query estimate-swap-exact-amount-in
  estimate-swap-exact-amount-out Query estimate-swap-exact-amount-out
  num-pools                      Query number of pools
  pool                           Query pool
  pool-params                    Query pool-params
  pools                          Query pools
  spot-price                     Query spot-price
  total-liquidity                Query total-liquidity
  total-share                    Query total-share

Flags:
  -h, --help   help for gamm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query gamm [command] --help" for more information about a command.
