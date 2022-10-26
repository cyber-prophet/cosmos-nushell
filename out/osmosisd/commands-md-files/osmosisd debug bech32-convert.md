Convert any bech32 string to the osmo prefix
Especially useful for converting cosmos addresses to osmo addresses

Example:
	osmosisd bech32-convert cosmos1ey69r37gfxvxg62sh4r0ktpuc46pzjrmz29g45

Usage:
  osmosisd debug bech32-convert [bech32 string] [flags]

Flags:
  -h, --help            help for bech32-convert
  -p, --prefix string   Bech32 Prefix to encode to (default "osmo")

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors
