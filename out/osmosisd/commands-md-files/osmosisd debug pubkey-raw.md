Decode a pubkey from hex, base64, or bech32.
Example:
$ osmosisd debug pubkey-raw TWFuIGlzIGRpc3Rpbmd1aXNoZWQsIG5vdCBvbmx5IGJ5IGhpcyByZWFzb24sIGJ1dCBieSB0aGlz
$ osmosisd debug pubkey-raw cosmos1e0jnq2sun3dzjh8p2xq95kk0expwmd7shwjpfg

Usage:
  osmosisd debug pubkey-raw [pubkey] -t [{ed25519, secp256k1}] [flags]

Flags:
  -h, --help          help for pubkey-raw
  -t, --type string   Pubkey type to decode (oneof secp256k1, ed25519) (default "ed25519")

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
