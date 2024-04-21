build contract address

Usage:
  cyber query wasm build-address [code-hash] [creator-address] [salt-hex-encoded] [json_encoded_init_args (required when set as fixed)] [flags]

Aliases:
  build-address, address

Flags:
      --ascii   ascii encoded salt
      --b64     base64 encoded salt
  -h, --help    help for build-address
      --hex     hex encoded salt

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
