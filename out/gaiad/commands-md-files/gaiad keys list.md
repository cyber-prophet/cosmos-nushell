Return a list of all public keys stored by this key manager
along with their associated name and address.

Usage:
  gaiad keys list [flags]

Flags:
  -h, --help         help for list
  -n, --list-names   List names only

Global Flags:
      --home string              The application home directory (default "/Users/user/.gaia")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors
