Tool for helping with debugging your application

Usage:
  osmosisd debug [flags]
  osmosisd debug [command]

Available Commands:
  addr           Convert an address between hex and bech32
  bech32-convert Convert any bech32 string to the osmo prefix
  pubkey         Decode a pubkey from proto JSON
  pubkey-raw     Decode a ED25519 or secp256k1 pubkey from hex, base64, or bech32
  raw-bytes      Convert raw bytes output (eg. [10 21 13 255]) to hex

Flags:
  -h, --help   help for debug

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd debug [command] --help" for more information about a command.
