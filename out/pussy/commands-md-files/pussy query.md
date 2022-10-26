Querying subcommands

Usage:
  pussy query [flags]
  pussy query [command]

Aliases:
  query, q

Available Commands:
  account                  Query for account by address
  auth                     Querying commands for the auth module
  authz                    Querying commands for the authz module
  bandwidth                Querying commands for the bandwidth module
  bank                     Querying commands for the bank module
  block                    Get verified data for a the block at given height
  distribution             Querying commands for the distribution module
  dmn                      Querying commands for the dmn module
  evidence                 Query for evidence by hash or for all (paginated) submitted evidence
  feegrant                 Querying commands for the feegrant module
  gov                      Querying commands for the governance module
  graph                    Querying commands for the graph module
  grid                     Querying commands for the grid module
  ibc                      Querying commands for the IBC module
  ibc-transfer             IBC fungible token transfer query subcommands
  liquidity                Querying commands for the liquidity module
  mint                     Querying commands for the minting module
  params                   Querying commands for the params module
  rank                     Querying commands for the rank module
  resources                Querying commands for the resources module
  slashing                 Querying commands for the slashing module
  staking                  Querying commands for the staking module
  tendermint-validator-set Get the full tendermint validator set at given height
  tx                       Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
  txs                      Query for paginated transactions that match a set of events
  upgrade                  Querying commands for the upgrade module
  wasm                     Querying commands for the wasm module

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for query

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query [command] --help" for more information about a command.
