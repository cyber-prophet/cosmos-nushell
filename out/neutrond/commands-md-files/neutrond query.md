Querying subcommands

Usage:
  neutrond query [flags]
  neutrond query [command]

Aliases:
  query, q

Available Commands:
  account                  Query for account by address
  adminmodule              Querying commands for the adminmodule module
  auth                     Querying commands for the auth module
  authz                    Querying commands for the authz module
  bank                     Querying commands for the bank module
  block                    Get verified data for a the block at given height
  ccvconsumer              Querying commands for the ccv consumer module
  contractmanager          Querying commands for the contractmanager module
  cron                     Querying commands for the cron module
  evidence                 Query for evidence by hash or for all (paginated) submitted evidence
  feeburner                Querying commands for the feeburner module
  feegrant                 Querying commands for the feegrant module
  feerefunder              Querying commands for the feerefunder module
  ibc                      Querying commands for the IBC module
  ibc-router               
  ibc-transfer             IBC fungible token transfer query subcommands
  ibchooks                 Querying commands for the ibchooks module
  interchain-accounts      interchain-accounts subcommands
  interchainqueries        Querying commands for the interchainqueries module
  interchaintxs            Querying commands for the interchaintxs module
  params                   Querying commands for the params module
  slashing                 Querying commands for the slashing module
  tendermint-validator-set Get the full tendermint validator set at given height
  tokenfactory             Querying commands for the tokenfactory module
  tx                       Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
  txs                      Query for paginated transactions that match a set of events
  upgrade                  Querying commands for the upgrade module
  wasm                     Querying commands for the wasm module

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for query

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query [command] --help" for more information about a command.
