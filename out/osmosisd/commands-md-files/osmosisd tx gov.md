Governance transactions subcommands

Usage:
  osmosisd tx gov [flags]
  osmosisd tx gov [command]

Available Commands:
  deposit         Deposit tokens for an active proposal
  submit-proposal Submit a proposal along with an initial deposit
  vote            Vote for an active proposal, options: yes/no/no_with_veto/abstain
  weighted-vote   Vote for an active proposal, options: yes/no/no_with_veto/abstain

Flags:
  -h, --help   help for gov

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.osmosisd")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "osmosisd tx gov [command] --help" for more information about a command.
