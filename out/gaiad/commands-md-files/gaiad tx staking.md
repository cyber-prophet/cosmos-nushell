Staking transaction subcommands

Usage:
  gaiad tx staking [flags]
  gaiad tx staking [command]

Available Commands:
  cancel-unbond                  Cancel unbonding delegation and delegate back to the validator
  create-validator               create new validator initialized with a self-delegation to it
  delegate                       Delegate liquid tokens to a validator
  disable-tokenize-shares        Disable tokenization of shares
  edit-validator                 edit an existing validator account
  enable-tokenize-shares         Enable tokenization of shares
  redeem-tokens                  Redeem specified amount of share tokens to delegation
  redelegate                     Redelegate illiquid tokens from one validator to another
  tokenize-share                 Tokenize delegation to share tokens
  transfer-tokenize-share-record Transfer ownership of TokenizeShareRecord
  unbond                         Unbond shares from a validator
  unbond-validator               Unbond a validator
  validator-bond                 Mark a delegation as a validator self-bond

Flags:
  -h, --help   help for staking

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.gaia")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "gaiad tx staking [command] --help" for more information about a command.
