Querying subcommands

Usage:
  osmosisd query [flags]
  osmosisd query [command]

Aliases:
  query, q

Available Commands:
  account                  Query for account by address
  auth                     Querying commands for the auth module
  authz                    Querying commands for the authz module
  bank                     Querying commands for the bank module
  block                    Get verified data for a the block at given height
  distribution             Querying commands for the distribution module
  epochs                   Querying commands for the epochs module
  evidence                 Query for evidence by hash or for all (paginated) submitted evidence
  gamm                     Querying commands for the gamm module
  gov                      Querying commands for the governance module
  ibc                      Querying commands for the IBC module
  ibc-transfer             IBC fungible token transfer query subcommands
  incentives               Querying commands for the incentives module
  interchain-accounts      interchain-accounts subcommands
  lockup                   Querying commands for the lockup module
  mint                     Querying commands for the minting module
  params                   Querying commands for the params module
  poolincentives           Querying commands for the poolincentives module
  slashing                 Querying commands for the slashing module
  staking                  Querying commands for the staking module
  superfluid               Querying commands for the superfluid module
  tendermint-validator-set Get the full tendermint validator set at given height
  tokenfactory             Querying commands for the tokenfactory module
  tx                       Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
  txfees                   Querying commands for the txfees module
  txs                      Query for paginated transactions that match a set of events
  upgrade                  Querying commands for the upgrade module
  wasm                     Querying commands for the wasm module

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for query

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query [command] --help" for more information about a command.
