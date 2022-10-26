Transactions subcommands

Usage:
  osmosisd tx [flags]
  osmosisd tx [command]

Available Commands:
                      
  authz               Authorization transactions subcommands
  bank                Bank transaction subcommands
  broadcast           Broadcast transactions generated offline
  crisis              Crisis transactions subcommands
  decode              Decode a binary encoded transaction string
  distribution        Distribution transactions subcommands
  encode              Encode transactions generated offline
  epochs              epochs transactions subcommands
  evidence            Evidence transaction subcommands
  gamm                Generalized automated market maker transaction subcommands
  gov                 Governance transactions subcommands
  ibc                 IBC transaction subcommands
  ibc-transfer        IBC fungible token transfer transaction subcommands
  incentives          incentives transactions subcommands
  lockup              lockup transactions subcommands
  multisign           Generate multisig signatures for transactions generated offline
  sign                Sign a transaction generated offline
  sign-batch          Sign transaction batch files
  slashing            Slashing transaction subcommands
  staking             Staking transaction subcommands
  superfluid          superfluid transactions subcommands
  tokenfactory        tokenfactory transactions subcommands
  txfees              txfees transaction subcommands
  validate-signatures validate transactions signatures
  vesting             Vesting transaction subcommands
  wasm                Wasm transaction subcommands

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for tx

Global Flags:
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Additional help topics:
  osmosisd tx upgrade    Upgrade transaction subcommands

Use "osmosisd tx [command] --help" for more information about a command.
