Start osmosis app

Usage:
  osmosisd [command]

Available Commands:
  add-genesis-account      Add a genesis account to genesis.json
  add-wasm-genesis-message Wasm genesis subcommands
  collect-gentxs           Collect genesis txs and output a genesis.json file
  config                   Create or query an application CLI configuration file
  debug                    Tool for helping with debugging your application
  export                   Export state to JSON
  export-derive-balances   Export a derive balances from a provided genesis export
  forceprune               Example osmosisd forceprune -f 188000 -m 1000, which would keep blockchain and state data of last 188000 blocks (approximately 2 weeks) and ABCI responses of last 1000 blocks.
  gentx                    Generate a genesis tx carrying a self delegation
  help                     Help about any command
  init                     Initialize private validator, p2p, genesis, and application configuration files
  keys                     Manage your application's keys
  migrate                  Migrate genesis to a specified target version
  prepare-genesis          Prepare a genesis file with initial setup
  query                    Querying subcommands
  rollback                 rollback tendermint state by one height
  rosetta                  spin up a rosetta server
  start                    Run the full node
  status                   Query remote node for status
  tendermint               Tendermint subcommands
  testnet                  Initialize files for a simapp testnet
  tx                       Transactions subcommands
  unsafe-reset-all         (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
  validate-genesis         validates the genesis file at the default location or at the location passed as an arg
  version                  Print the application binary version information

Flags:
  -h, --help                help for osmosisd
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd [command] --help" for more information about a command.
