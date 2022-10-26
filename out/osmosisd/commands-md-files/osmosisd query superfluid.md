Querying commands for the superfluid module

Usage:
  osmosisd query superfluid [flags]
  osmosisd query superfluid [command]

Available Commands:
  all-intermediary-accounts            Query all superfluid intermediary accounts
  all-superfluid-assets                Query all superfluid assets
  asset-multiplier                     Query asset multiplier by denom
  connected-intermediary-account       Query connected intermediary account
  params                               Query the current superfluid parameters
  superfluid-delegation-amount         Query coins superfluid delegated for a delegator, validator, denom
  superfluid-delegation-by-delegator   Query coins superfluid delegated for the specified delegator
  superfluid-undelegation-by-delegator Query coins superfluid undelegated for the specified delegator
  total-delegation-by-delegator        Query both superfluid delegation and normal delegation
  total-superfluid-delegations         Query total amount of osmo delegated via superfluid staking

Flags:
  -h, --help   help for superfluid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query superfluid [command] --help" for more information about a command.
