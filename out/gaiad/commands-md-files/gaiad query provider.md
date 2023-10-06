Querying commands for the ccv provider module

Usage:
  gaiad query provider [flags]
  gaiad query provider [command]

Available Commands:
  consumer-genesis                  Query for consumer chain genesis state by chain id
  list-consumer-chains              Query active consumer chains for provider chain.
  list-start-proposals              Query consumer chains start proposals on provider chain.
  list-stop-proposals               Query consumer chains stop proposals on provider chain.
  registered-consumer-reward-denoms Query registered consumer reward denoms
  throttle-state                    Query on-chain state relevant to slash packet throttling
  throttled-consumer-packet-data    Query pending VSCMatured and slash packet data for a consumer chainId
  validator-consumer-key            Query assigned validator consensus public key for a consumer chain
  validator-provider-key            Query validator consensus public key for the provider chain

Flags:
  -h, --help   help for provider

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "gaiad query provider [command] --help" for more information about a command.
