IntechainAdapteerd (daemon)

Usage:
  neutrond [command]

Available Commands:
  add-consumer-section ONLY FOR TESTING PURPOSES! Modifies genesis so that chain can be started locally with one node.
  add-genesis-account  Add a genesis account to genesis.json
  add-wasm-message     Wasm genesis subcommands
  collect-gentxs       Collect genesis txs and output a genesis.json file
  config               Create or query an application CLI configuration file
  debug                Tool for helping with debugging your application
  export               Export state to JSON
  gentx                Generate a genesis tx carrying a self delegation
  help                 Help about any command
  init                 Initialize private validator, p2p, genesis, and application configuration files
  keys                 Manage your application's keys
  query                Querying subcommands
  rollback             rollback cosmos-sdk and tendermint state by one height
  start                Run the full node
  status               Query remote node for status
  tendermint           Tendermint subcommands
  tx                   Transactions subcommands
  validate-genesis     validates the genesis file at the default location or at the location passed as an arg
  version              Print the application binary version information

Flags:
  -h, --help                help for neutrond
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond [command] --help" for more information about a command.
