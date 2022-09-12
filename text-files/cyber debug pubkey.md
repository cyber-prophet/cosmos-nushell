Decode a pubkey from proto JSON and display it's address.

Example:
$ cyber debug pubkey '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AurroA7jvfPd1AadmmOvWM2rJSwipXfRf8yD6pLbA2DJ"}'

Usage:
  cyber debug pubkey [pubkey] [flags]

Flags:
  -h, --help   help for pubkey

Global Flags:
      --home string         directory for config and data (default "/Users/user/.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
