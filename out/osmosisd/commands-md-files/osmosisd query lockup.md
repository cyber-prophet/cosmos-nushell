Querying commands for the lockup module

Usage:
  osmosisd query lockup [flags]
  osmosisd query lockup [command]

Available Commands:
  account-locked-beforetime                    Query account's unlocked records before specific time
  account-locked-coins                         Query account's locked coins
  account-locked-duration                      Query account locked records with a specific duration
  account-locked-longer-duration               Query account locked records with longer duration
  account-locked-longer-duration-denom         Query locked records for a denom with longer duration
  account-locked-longer-duration-not-unlocking Query account locked records with longer duration from unlocking only queue
  account-locked-pastime                       Query locked records of an account with unlock time beyond timestamp
  account-locked-pastime-denom                 Query account's lock records by address, timestamp, denom
  account-locked-pastime-not-unlocking         Query locked records of an account with unlock time beyond timestamp within not unlocking queue
  account-unlockable-coins                     Query account's unlockable coins
  account-unlocking-coins                      Query account's unlocking coins
  lock-by-id                                   Query account's lock record by id
  module-balance                               Query module balance
  module-locked-amount                         Query module locked amount
  output-all-locks                             output all locks into a json file
  synthetic-lockups-by-lock-id                 Query synthetic lockups by lockup id
  total-locked-of-denom                        Query locked amount for a specific denom bigger then duration provided

Flags:
  -h, --help   help for lockup

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd query lockup [command] --help" for more information about a command.
