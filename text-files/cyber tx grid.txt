grid transactions subcommands

Usage:
  cyber tx grid [flags]
  cyber tx grid [command]

Available Commands:
  create-route    Create grid route from your address to destination address with provided name
  delete-route    Delete your grid route to given destination address
  edit-route      Set value of grid route to destination address
  edit-route-name Edit name of grid route to given destination address

Flags:
  -h, --help   help for grid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber tx grid [command] --help" for more information about a command.
