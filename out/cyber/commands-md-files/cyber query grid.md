Querying commands for the grid module

Usage:
  cyber query grid [flags]
  cyber query grid [command]

Available Commands:
  params      Query the current grid module parameters information
  route       Query grid route that routes for given source and destination accounts
  routed-from Query grid value that routed from source account
  routed-to   Query grid value that routed to destination account
  routes      Query all grid routes
  routes-from Query all grid routes that made from source account
  routes-to   Query all grid routes that routed to destination account

Flags:
  -h, --help   help for grid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query grid [command] --help" for more information about a command.
