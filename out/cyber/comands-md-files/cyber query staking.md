Querying commands for the staking module

Usage:
  cyber query staking [flags]
  cyber query staking [command]

Available Commands:
  delegation                 Query a delegation based on address and validator address
  delegations                Query all delegations made by one delegator
  delegations-to             Query all delegations made to one validator
  historical-info            Query historical info at given height
  params                     Query the current staking parameters information
  pool                       Query the current staking pool values
  redelegation               Query a redelegation record based on delegator and a source and destination validator address
  redelegations              Query all redelegations records for one delegator
  redelegations-from         Query all outgoing redelegatations from a validator
  unbonding-delegation       Query an unbonding-delegation record based on delegator and validator address
  unbonding-delegations      Query all unbonding-delegations records for one delegator
  unbonding-delegations-from Query all unbonding delegatations from a validator
  validator                  Query a validator
  validators                 Query for all validators

Flags:
  -h, --help   help for staking

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query staking [command] --help" for more information about a command.
