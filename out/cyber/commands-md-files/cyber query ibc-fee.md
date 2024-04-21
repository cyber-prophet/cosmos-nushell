IBC relayer incentivization query subcommands

Usage:
  cyber query ibc-fee [command]

Available Commands:
  channel             Query the ibc-fee enabled status of a channel
  channels            Query the ibc-fee enabled channels
  counterparty-payee  Query the relayer counterparty payee on a given channel
  packet              Query for an unrelayed incentivized packet by port-id, channel-id and packet sequence.
  packets             Query for all of the unrelayed incentivized packets and associated fees across all channels.
  packets-for-channel Query for all of the unrelayed incentivized packets on a given channel
  payee               Query the relayer payee address on a given channel
  total-ack-fees      Query the total acknowledgement fees for a packet
  total-recv-fees     Query the total receive fees for a packet
  total-timeout-fees  Query the total timeout fees for a packet

Flags:
  -h, --help   help for ibc-fee

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.cyber")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "cyber query ibc-fee [command] --help" for more information about a command.
