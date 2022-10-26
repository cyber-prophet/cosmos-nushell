Authorize and revoke access to execute transactions on behalf of your address

Usage:
  osmosisd tx authz [flags]
  osmosisd tx authz [command]

Available Commands:
  exec        execute tx on behalf of granter account
  grant       Grant authorization to an address
  revoke      revoke authorization

Flags:
  -h, --help   help for authz

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx authz [command] --help" for more information about a command.
