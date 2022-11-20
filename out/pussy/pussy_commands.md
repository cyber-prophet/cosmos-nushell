### pussy 

```
Space Pussy

Usage:
  pussy [command]

Available Commands:
  add-genesis-account Add a genesis account to genesis.json
  collect-gentxs      Collect genesis txs and output a genesis.json file
  config              Create or query an application CLI configuration file
  debug               Tool for helping with debugging your application
  export              Export state to JSON
  gentx               Generate a genesis tx carrying a self delegation
  help                Help about any command
  init                Initialize private validator, p2p, genesis, and application configuration files
  keys                Manage your application's keys
  migrate             Migrate genesis to a specified target version
  query               Querying subcommands
  rollback            rollback cosmos-sdk and tendermint state by one height
  start               Run the full node
  status              Query remote node for status
  tendermint          Tendermint subcommands
  testnet             Initialize files for a simapp testnet
  tx                  Transactions subcommands
  validate-genesis    validates the genesis file at the default location or at the location passed as an arg
  version             Print the application binary version information

Flags:
  -h, --help                help for pussy
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy [command] --help" for more information about a command.

```

### pussy add-genesis-account

```
Add a genesis account to genesis.json. The provided account must specify
the account address or key name and a list of initial coins. If a key name is given,
the address will be looked up in the local Keybase. The list of initial tokens must
contain valid denominations. Accounts may optionally be supplied with vesting parameters.

Usage:
  pussy add-genesis-account [address_or_key_name] [coin][,[coin]] [flags]

Flags:
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for add-genesis-account
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --vesting-amount string    amount of coins for vesting accounts
      --vesting-end-time int     schedule end time (unix epoch) for vesting accounts
      --vesting-start-time int   schedule start time (unix epoch) for vesting accounts

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy collect-gentxs

```
Collect genesis txs and output a genesis.json file

Usage:
  pussy collect-gentxs [flags]

Flags:
      --gentx-dir string   override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
  -h, --help               help for collect-gentxs

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy config

```
Create or query an application CLI configuration file

Usage:
  pussy config <key> [value] [flags]

Flags:
  -h, --help   help for config

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy debug addr

```
Convert an address between hex encoding and bech32.

Example:
$ spacepussy debug addr cosmos1e0jnq2sun3dzjh8p2xq95kk0expwmd7shwjpfg

Usage:
  pussy debug addr [address] [flags]

Flags:
  -h, --help   help for addr

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy debug pubkey

```
Decode a pubkey from proto JSON and display it's address.

Example:
$ spacepussy debug pubkey '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AurroA7jvfPd1AadmmOvWM2rJSwipXfRf8yD6pLbA2DJ"}'

Usage:
  pussy debug pubkey [pubkey] [flags]

Flags:
  -h, --help   help for pubkey

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy debug raw-bytes

```
Convert raw-bytes to hex.

Example:
$ spacepussy debug raw-bytes [72 101 108 108 111 44 32 112 108 97 121 103 114 111 117 110 100]

Usage:
  pussy debug raw-bytes [raw-bytes] [flags]

Flags:
  -h, --help   help for raw-bytes

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy debug

```
Tool for helping with debugging your application

Usage:
  pussy debug [flags]
  pussy debug [command]

Available Commands:
  addr        Convert an address between hex and bech32
  pubkey      Decode a pubkey from proto JSON
  raw-bytes   Convert raw bytes output (eg. [10 21 13 255]) to hex

Flags:
  -h, --help   help for debug

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy debug [command] --help" for more information about a command.

```

### pussy export

```
Export state to JSON

Usage:
  pussy export [flags]

Flags:
      --for-zero-height              Export state to start at height zero (perform preproccessing)
      --height int                   Export state from a particular height (-1 means latest height) (default -1)
  -h, --help                         help for export
      --jail-allowed-addrs strings   Comma-separated list of operator addresses of jailed validators to unjail

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy gentx

```
Generate a genesis transaction that creates a validator with a self-delegation,
that is signed by the key in the Keyring referenced by a given name. A node ID and Bech32 consensus
pubkey may optionally be provided. If they are omitted, they will be retrieved from the priv_validator.json
file. The following default parameters are included:
    
	delegation amount:           100000000stake
	commission rate:             0.1
	commission max rate:         0.2
	commission max change rate:  0.01
	minimum self delegation:     1


Example:
$ spacepussy gentx my-key-name 1000000stake --home=/path/to/home/dir --keyring-backend=os --chain-id=test-chain-1 \
    --moniker="myvalidator" \
    --commission-max-change-rate=0.01 \
    --commission-max-rate=1.0 \
    --commission-rate=0.07 \
    --details="..." \
    --security-contact="..." \
    --website="..."

Usage:
  pussy gentx [key_name] [amount] [flags]

Flags:
  -a, --account-number uint                 The account number of the signing account (offline mode only)
      --amount string                       Amount of coins to bond
  -b, --broadcast-mode string               Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string                     The network chain ID
      --commission-max-change-rate string   The maximum commission change rate percentage (per day)
      --commission-max-rate string          The maximum commission rate percentage
      --commission-rate string              The initial commission rate percentage
      --details string                      The validator's (optional) details
      --dry-run                             ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string                  Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                         Fees to pay along with transaction; eg: 10uatom
      --from string                         Name or address of private key with which to sign
      --gas string                          gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float                adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                   Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                       Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                                help for gentx
      --identity string                     The (optional) identity signature (ex. UPort or Keybase)
      --ip string                           The node's public IP (default "10.0.0.66")
      --keyring-backend string              Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                  The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                              Use a connected Ledger device
      --min-self-delegation string          The minimum self delegation required on the validator
      --moniker string                      The validator's (optional) moniker
      --node string                         <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --node-id string                      The node's NodeID
      --note string                         Note to add a description to the transaction (previously --memo)
      --offline                             Offline mode (does not allow any online functionality
  -o, --output string                       Output format (text|json) (default "json")
      --output-document string              Write the genesis transaction JSON document to the given file instead of the default location
      --pubkey string                       The validator's Protobuf JSON encoded public key
      --security-contact string             The validator's (optional) security contact email
  -s, --sequence uint                       The sequence number of the signing account (offline mode only)
      --sign-mode string                    Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint                 Set a block timeout height to prevent the tx from being committed past a certain height
      --website string                      The validator's (optional) website
  -y, --yes                                 Skip tx broadcasting prompt confirmation

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy help

```
Help provides help for any command in the application.
Simply type pussy help [path to command] for full details.

Usage:
  pussy help [command] [flags]

Flags:
  -h, --help   help for help

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy init

```
Initialize validators's and node's configuration files.

Usage:
  pussy init [moniker] [flags]

Flags:
      --chain-id string   genesis file chain-id, if left blank will be randomly created
  -h, --help              help for init
  -o, --overwrite         overwrite the genesis.json file
      --recover           provide seed phrase to recover existing key instead of creating

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy keys add

```
Derive a new private key and encrypt to disk.
Optionally specify a BIP39 mnemonic, a BIP39 passphrase to further secure the mnemonic,
and a bip32 HD path to derive a specific account. The key will be stored under the given name
and encrypted with the given password. The only input that is required is the encryption password.

If run with -i, it will prompt the user for BIP44 path, BIP39 mnemonic, and passphrase.
The flag --recover allows one to recover a key from a seed passphrase.
If run with --dry-run, a key would be generated (or recovered) but not stored to the
local keystore.
Use the --pubkey flag to add arbitrary public keys to the keystore for constructing
multisig transactions.

You can create and store a multisig key by passing the list of key names stored in a keyring
and the minimum number of signatures required through --multisig-threshold. The keys are
sorted by address, unless the flag --nosort is set.
Example:

    keys add mymultisig --multisig "keyname1,keyname2,keyname3" --multisig-threshold 2

Usage:
  pussy keys add <name> [flags]

Flags:
      --account uint32           Account number for HD derivation
      --algo string              Key signing algorithm to generate keys for (default "secp256k1")
      --coin-type uint32         coin type number for HD derivation (default 118)
      --dry-run                  Perform action, but don't add key to local keystore
      --hd-path string           Manual HD Path derivation (overrides BIP44 config)
  -h, --help                     help for add
      --index uint32             Address index number for HD derivation
  -i, --interactive              Interactively prompt user for BIP39 passphrase and mnemonic
      --ledger                   Store a local reference to a private key on a Ledger device
      --multisig strings         List of key names stored in keyring to construct a public legacy multisig key
      --multisig-threshold int   K out of N required signatures. For use in conjunction with --multisig (default 1)
      --no-backup                Don't print out seed phrase (if others are watching the terminal)
      --nosort                   Keys passed to --multisig are taken in the order they're supplied
      --pubkey string            Parse a public key in JSON format and saves key info to <name> file.
      --recover                  Provide seed phrase to recover existing key instead of creating

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys delete

```
Delete keys from the Keybase backend.

Note that removing offline or ledger keys will remove
only the public key references stored locally, i.e.
private keys stored in a ledger device cannot be deleted with the CLI.

Usage:
  pussy keys delete <name>... [flags]

Flags:
  -f, --force   Remove the key unconditionally without asking for the passphrase. Deprecated.
  -h, --help    help for delete
  -y, --yes     Skip confirmation prompt when deleting offline or ledger key references

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys export

```
Export a private key from the local keyring in ASCII-armored encrypted format.

When both the --unarmored-hex and --unsafe flags are selected, cryptographic
private key material is exported in an INSECURE fashion that is designed to
allow users to import their keys in hot wallets. This feature is for advanced
users only that are confident about how to handle private keys work and are
FULLY AWARE OF THE RISKS. If you are unsure, you may want to do some research
and export your keys in ASCII-armored encrypted format.

Usage:
  pussy keys export <name> [flags]

Flags:
  -h, --help            help for export
      --unarmored-hex   Export unarmored hex privkey. Requires --unsafe.
      --unsafe          Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys import

```
Import a ASCII armored private key into the local keybase.

Usage:
  pussy keys import <name> <keyfile> [flags]

Flags:
  -h, --help   help for import

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys list

```
Return a list of all public keys stored by this key manager
along with their associated name and address.

Usage:
  pussy keys list [flags]

Flags:
  -h, --help         help for list
  -n, --list-names   List names only

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys migrate

```
Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring.
The legacy Keybase used to persist keys in a LevelDB database stored in a 'keys' sub-directory of
the old client application's home directory, e.g. $HOME/.gaiacli/keys/.
For each key material entry, the command will prompt if the key should be skipped or not. If the key
is not to be skipped, the passphrase must be entered. The key will only be migrated if the passphrase
is correct. Otherwise, the command will exit and migration must be repeated.

It is recommended to run in 'dry-run' mode first to verify all key migration material.

Usage:
  pussy keys migrate <old_home_dir> [flags]

Flags:
      --dry-run   Run migration without actually persisting any changes to the new Keybase
  -h, --help      help for migrate

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys mnemonic

```
Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy

Usage:
  pussy keys mnemonic [flags]

Flags:
  -h, --help             help for mnemonic
      --unsafe-entropy   Prompt the user to supply their own entropy, instead of relying on the system

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys parse

```
Convert and print to stdout key addresses and fingerprints from
hexadecimal into bech32 cosmos prefixed format and vice versa.

Usage:
  pussy keys parse <hex-or-bech32-address> [flags]

Flags:
  -h, --help   help for parse

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys show

```
Display keys details. If multiple names or addresses are provided,
then an ephemeral multisig key will be created under the name "multi"
consisting of all the keys provided by name and multisig threshold.

Usage:
  pussy keys show [name_or_address [name_or_address...]] [flags]

Flags:
  -a, --address                  Output the address only (overrides --output)
      --bech string              The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
  -d, --device                   Output the address in a ledger device
  -h, --help                     help for show
      --multisig-threshold int   K out of N required signatures (default 1)
  -p, --pubkey                   Output the public key only (overrides --output)

Global Flags:
      --home string              The application home directory (default "/Users/user//.pussy")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### pussy keys

```
Keyring management commands. These keys may be in any format supported by the
Tendermint crypto library and can be used by light-clients, full nodes, or any other application
that needs to sign with a private key.

The keyring supports the following backends:

    os          Uses the operating system's default credentials store.
    file        Uses encrypted file-based keystore within the app's configuration directory.
                This keyring will request a password each time it is accessed, which may occur
                multiple times in a single command resulting in repeated password prompts.
    kwallet     Uses KDE Wallet Manager as a credentials management application.
    pass        Uses the pass command line utility to store and retrieve keys.
    test        Stores keys insecurely to disk. It does not prompt for a password to be unlocked
                and it should be use only for testing purposes.

kwallet and pass backends depend on external tools. Refer to their respective documentation for more
information:
    KWallet     https://github.com/KDE/kwallet
    pass        https://www.passwordstore.org/

The pass backend requires GnuPG: https://gnupg.org/

Usage:
  pussy keys [command]

Available Commands:
  add         Add an encrypted private key (either newly generated or recovered), encrypt it, and save to <name> file
  delete      Delete the given keys
  export      Export private keys
  import      Import private keys into the local keybase
  list        List all keys
  migrate     Migrate keys from the legacy (db-based) Keybase
  mnemonic    Compute the bip39 mnemonic for some input entropy
  parse       Parse address from hex to bech32 and vice versa
  show        Retrieve key information by name or address

Flags:
  -h, --help                     help for keys
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --output string            Output format (text|json) (default "text")

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy keys [command] --help" for more information about a command.

```

### pussy migrate

```
Migrate the source genesis into the target version and print to STDOUT.

Example:
$ spacepussy migrate v0.36 /path/to/genesis.json --chain-id=cosmoshub-3 --genesis-time=2019-04-22T17:00:00Z

Usage:
  pussy migrate [target-version] [genesis-file] [flags]

Flags:
      --chain-id string       override chain_id with this flag
      --genesis-time string   override genesis_time with this flag
  -h, --help                  help for migrate

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query account

```
Query for account by address

Usage:
  pussy query account [address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query auth account

```
Query for account by address

Usage:
  pussy query auth account [address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query auth accounts

```
Query all the accounts

Usage:
  pussy query auth accounts [flags]

Flags:
      --count-total       count total number of records in all-accounts to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for accounts
      --limit uint        pagination limit of all-accounts to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of all-accounts to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of all-accounts to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of all-accounts to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query auth params

```
Query the current auth parameters:

$ <appd> query auth params

Usage:
  pussy query auth params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query auth

```
Querying commands for the auth module

Usage:
  pussy query auth [flags]
  pussy query auth [command]

Available Commands:
  account     Query for account by address
  accounts    Query all the accounts
  params      Query the current auth parameters

Flags:
  -h, --help   help for auth

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query auth [command] --help" for more information about a command.

```

### pussy query authz grants-by-grantee

```
Query authorization grants granted to a grantee.
Examples:
$ spacepussy q authz grants-by-grantee cosmos1skj..

Usage:
  pussy query authz grants-by-grantee [grantee-addr] [flags]

Aliases:
  grants-by-grantee, grantee-grants

Flags:
      --count-total       count total number of records in grantee-grants to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for grants-by-grantee
      --limit uint        pagination limit of grantee-grants to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of grantee-grants to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of grantee-grants to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of grantee-grants to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query authz grants-by-granter

```
Query authorization grants granted by granter.
Examples:
$ spacepussy q authz grants-by-granter cosmos1skj..

Usage:
  pussy query authz grants-by-granter [granter-addr] [flags]

Aliases:
  grants-by-granter, granter-grants

Flags:
      --count-total       count total number of records in granter-grants to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for grants-by-granter
      --limit uint        pagination limit of granter-grants to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of granter-grants to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of granter-grants to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of granter-grants to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query authz grants

```
Query authorization grants for a granter-grantee pair. If msg-type-url
is set, it will select grants only for that msg type.
Examples:
$ spacepussy query authz grants cosmos1skj.. cosmos1skjwj..
$ spacepussy query authz grants cosmos1skjw.. cosmos1skjwj.. /cosmos.bank.v1beta1.MsgSend

Usage:
  pussy query authz grants [granter-addr] [grantee-addr] [msg-type-url]? [flags]

Flags:
      --count-total       count total number of records in grants to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for grants
      --limit uint        pagination limit of grants to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of grants to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of grants to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query authz

```
Querying commands for the authz module

Usage:
  pussy query authz [flags]
  pussy query authz [command]

Available Commands:
  grants            query grants for a granter-grantee pair and optionally a msg-type-url
  grants-by-grantee query authorization grants granted to a grantee
  grants-by-granter query authorization grants granted by granter

Flags:
  -h, --help   help for authz

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query authz [command] --help" for more information about a command.

```

### pussy query bandwidth load

```
Query the bandwidth load

Usage:
  pussy query bandwidth load [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for load
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bandwidth neuron

```
Query the neuron bandwidth [address]

Usage:
  pussy query bandwidth neuron [address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for neuron
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bandwidth params

```
Query the current bandwidth module parameters information

Usage:
  pussy query bandwidth params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bandwidth price

```
Query the bandwidth price

Usage:
  pussy query bandwidth price [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for price
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bandwidth total

```
Query the total bandwidth

Usage:
  pussy query bandwidth total [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for total
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bandwidth

```
Querying commands for the bandwidth module

Usage:
  pussy query bandwidth [flags]
  pussy query bandwidth [command]

Available Commands:
  load        Query the bandwidth load
  neuron      Query the neuron bandwidth [address]
  params      Query the current bandwidth module parameters information
  price       Query the bandwidth price
  total       Query the total bandwidth

Flags:
  -h, --help   help for bandwidth

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query bandwidth [command] --help" for more information about a command.

```

### pussy query bank balances

```
Query the total balance of an account or of a specific denomination.

Example:
  $ spacepussy query bank balances [address]
  $ spacepussy query bank balances [address] --denom=[denom]

Usage:
  pussy query bank balances [address] [flags]

Flags:
      --count-total       count total number of records in all balances to query for
      --denom string      The specific balance denomination to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for balances
      --limit uint        pagination limit of all balances to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of all balances to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of all balances to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of all balances to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bank denom-metadata

```
Query the client metadata for all the registered coin denominations

Example:
  To query for the client metadata of all coin denominations use:
  $ spacepussy query bank denom-metadata

To query for the client metadata of a specific coin denomination use:
  $ spacepussy query bank denom-metadata --denom=[denom]

Usage:
  pussy query bank denom-metadata [flags]

Flags:
      --denom string    The specific denomination to query client metadata for
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-metadata
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bank total

```
Query total supply of coins that are held by accounts in the chain.

Example:
  $ spacepussy query bank total

To query for the total supply of a specific coin denomination use:
  $ spacepussy query bank total --denom=[denom]

Usage:
  pussy query bank total [flags]

Flags:
      --count-total       count total number of records in all supply totals to query for
      --denom string      The specific balance denomination to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for total
      --limit uint        pagination limit of all supply totals to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of all supply totals to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of all supply totals to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of all supply totals to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query bank

```
Querying commands for the bank module

Usage:
  pussy query bank [flags]
  pussy query bank [command]

Available Commands:
  balances       Query for account balances by address
  denom-metadata Query the client metadata for coin denominations
  total          Query the total supply of coins of the chain

Flags:
  -h, --help   help for bank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query bank [command] --help" for more information about a command.

```

### pussy query block

```
Get verified data for a the block at given height

Usage:
  pussy query block [height] [flags]

Flags:
  -h, --help          help for block
  -n, --node string   Node to connect to (default "tcp://localhost:26657")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution commission

```
Query validator commission rewards from delegators to that validator.

Example:
$ spacepussy query distribution commission pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query distribution commission [validator] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for commission
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution community-pool

```
Query all coins in the community pool which is under Governance control.

Example:
$ spacepussy query distribution community-pool

Usage:
  pussy query distribution community-pool [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for community-pool
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution params

```
Query distribution params

Usage:
  pussy query distribution params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution rewards

```
Query all rewards earned by a delegator, optionally restrict to rewards from a single validator.

Example:
$ spacepussy query distribution rewards pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p
$ spacepussy query distribution rewards pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query distribution rewards [delegator-addr] [validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for rewards
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution slashes

```
Query all slashes of a validator for a given block range.

Example:
$ spacepussy query distribution slashes pussyvalopervaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj 0 100

Usage:
  pussy query distribution slashes [validator] [start-height] [end-height] [flags]

Flags:
      --count-total       count total number of records in validator slashes to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for slashes
      --limit uint        pagination limit of validator slashes to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of validator slashes to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of validator slashes to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of validator slashes to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution validator-outstanding-rewards

```
Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations.

Example:
$ spacepussy query distribution validator-outstanding-rewards pussyvaloper1lwjmdnks33xwnmfayc64ycprww49n33mtm92ne

Usage:
  pussy query distribution validator-outstanding-rewards [validator] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for validator-outstanding-rewards
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query distribution

```
Querying commands for the distribution module

Usage:
  pussy query distribution [flags]
  pussy query distribution [command]

Available Commands:
  commission                    Query distribution validator commission
  community-pool                Query the amount of coins in the community pool
  params                        Query distribution params
  rewards                       Query all distribution delegator rewards or rewards from a particular validator
  slashes                       Query distribution validator slashes
  validator-outstanding-rewards Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations

Flags:
  -h, --help   help for distribution

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query distribution [command] --help" for more information about a command.

```

### pussy query dmn params

```
Query the current dmn module parameters information

Usage:
  pussy query dmn params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query dmn thought-stats

```
Query thought stats

Usage:
  pussy query dmn thought-stats [program] [name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for thought-stats
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query dmn thought

```
Query thought

Usage:
  pussy query dmn thought [program] [name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for thought
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query dmn thoughts-stats

```
Query all thoughts stats

Usage:
  pussy query dmn thoughts-stats [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for thoughts-stats
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query dmn thoughts

```
Query all thoughts

Usage:
  pussy query dmn thoughts [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for thoughts
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query dmn

```
Querying commands for the dmn module

Usage:
  pussy query dmn [flags]
  pussy query dmn [command]

Available Commands:
  params         Query the current dmn module parameters information
  thought        Query thought
  thought-stats  Query thought stats
  thoughts       Query all thoughts
  thoughts-stats Query all thoughts stats

Flags:
  -h, --help   help for dmn

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query dmn [command] --help" for more information about a command.

```

### pussy query evidence

```
Error: invalid evidence hash: encoding/hex: invalid byte: U+002D '-'
Usage:
  pussy query evidence [flags]

Flags:
      --count-total       count total number of records in evidence to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for evidence
      --limit uint        pagination limit of evidence to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of evidence to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of evidence to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of evidence to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors


```

### pussy query feegrant grant

```
Query details for a grant. 
You can find the fee-grant of a granter and grantee.

Example:
$ spacepussy query feegrant grant [granter] [grantee]

Usage:
  pussy query feegrant grant [granter] [grantee] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for grant
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query feegrant grants-by-grantee

```
Queries all the grants for a grantee address.

Example:
$ spacepussy query feegrant grants-by-grantee [grantee]

Usage:
  pussy query feegrant grants-by-grantee [grantee] [flags]

Aliases:
  grants-by-grantee, grants

Flags:
      --count-total       count total number of records in grants to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for grants-by-grantee
      --limit uint        pagination limit of grants to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of grants to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of grants to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query feegrant grants-by-granter

```
Queries all the grants issued for a granter address.

Example:
$ spacepussy query feegrant grants-by-granter [granter]

Usage:
  pussy query feegrant grants-by-granter [granter] [flags]

Flags:
      --count-total       count total number of records in grants to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for grants-by-granter
      --limit uint        pagination limit of grants to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of grants to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of grants to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query feegrant

```
Querying commands for the feegrant module

Usage:
  pussy query feegrant [flags]
  pussy query feegrant [command]

Available Commands:
  grant             Query details of a single grant
  grants-by-grantee Query all grants of a grantee
  grants-by-granter Query all grants by a granter

Flags:
  -h, --help   help for feegrant

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query feegrant [command] --help" for more information about a command.

```

### pussy query gov deposit

```
Query details for a single proposal deposit on a proposal by its identifier.

Example:
$ spacepussy query gov deposit 1 cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk

Usage:
  pussy query gov deposit [proposal-id] [depositer-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for deposit
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov deposits

```
Query details for all deposits on a proposal.
You can find the proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy query gov deposits 1

Usage:
  pussy query gov deposits [proposal-id] [flags]

Flags:
      --count-total       count total number of records in deposits to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for deposits
      --limit uint        pagination limit of deposits to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of deposits to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of deposits to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of deposits to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov param

```
Query the all the parameters for the governance process.

Example:
$ spacepussy query gov param voting
$ spacepussy query gov param tallying
$ spacepussy query gov param deposit

Usage:
  pussy query gov param [param-type] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for param
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov params

```
Query the all the parameters for the governance process.

Example:
$ spacepussy query gov params

Usage:
  pussy query gov params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov proposal

```
Query details for a proposal. You can find the
proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy query gov proposal 1

Usage:
  pussy query gov proposal [proposal-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for proposal
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov proposals

```
Query for a all paginated proposals that match optional filters:

Example:
$ spacepussy query gov proposals --depositor cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk
$ spacepussy query gov proposals --voter cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk
$ spacepussy query gov proposals --status (DepositPeriod|VotingPeriod|Passed|Rejected)
$ spacepussy query gov proposals --page=2 --limit=100

Usage:
  pussy query gov proposals [flags]

Flags:
      --count-total        count total number of records in proposals to query for
      --depositor string   (optional) filter by proposals deposited on by depositor
      --height int         Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help               help for proposals
      --limit uint         pagination limit of proposals to query for (default 100)
      --node string        <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint        pagination offset of proposals to query for
  -o, --output string      Output format (text|json) (default "text")
      --page uint          pagination page of proposals to query for. This sets offset to a multiple of limit (default 1)
      --page-key string    pagination page-key of proposals to query for
      --reverse            results are sorted in descending order
      --status string      (optional) filter proposals by proposal status, status: deposit_period/voting_period/passed/rejected
      --voter string       (optional) filter by proposals voted on by voted

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov proposer

```
Query which address proposed a proposal with a given ID.

Example:
$ spacepussy query gov proposer 1

Usage:
  pussy query gov proposer [proposal-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for proposer
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov tally

```
Query tally of votes on a proposal. You can find
the proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy query gov tally 1

Usage:
  pussy query gov tally [proposal-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for tally
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov vote

```
Query details for a single vote on a proposal given its identifier.

Example:
$ spacepussy query gov vote 1 cosmos1skjwj5whet0lpe65qaq4rpq03hjxlwd9nf39lk

Usage:
  pussy query gov vote [proposal-id] [voter-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for vote
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov votes

```
Query vote details for a single proposal by its identifier.

Example:
$ spacepussy query gov votes 1
$ spacepussy query gov votes 1 --page=2 --limit=100

Usage:
  pussy query gov votes [proposal-id] [flags]

Flags:
      --count-total       count total number of records in votes to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for votes
      --limit uint        pagination limit of votes to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of votes to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of votes to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of votes to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query gov

```
Querying commands for the governance module

Usage:
  pussy query gov [flags]
  pussy query gov [command]

Available Commands:
  deposit     Query details of a deposit
  deposits    Query deposits on a proposal
  param       Query the parameters (voting|tallying|deposit) of the governance process
  params      Query the parameters of the governance process
  proposal    Query details of a single proposal
  proposals   Query proposals with optional filters
  proposer    Query the proposer of a governance proposal
  tally       Get the tally of a proposal vote
  vote        Query details of a single vote
  votes       Query votes on a proposal

Flags:
  -h, --help   help for gov

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query gov [command] --help" for more information about a command.

```

### pussy query graph stats

```
Query the graph stats

Usage:
  pussy query graph stats [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for stats
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query graph

```
Querying commands for the graph module

Usage:
  pussy query graph [flags]
  pussy query graph [command]

Available Commands:
  stats       Query the graph stats

Flags:
  -h, --help   help for graph

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query graph [command] --help" for more information about a command.

```

### pussy query grid params

```
Query the current grid module parameters information

Usage:
  pussy query grid params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid route

```
Query grid route that routes for given source and destination accounts

Usage:
  pussy query grid route  [source] [destination] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for route
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid routed-from

```
Query grid value that routed from source account

Usage:
  pussy query grid routed-from [source] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for routed-from
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid routed-to

```
Query grid value that routed to destination account

Usage:
  pussy query grid routed-to [destination] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for routed-to
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid routes-from

```
Query all grid routes that made from source account

Usage:
  pussy query grid routes-from [source] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for routes-from
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid routes-to

```
Query all grid routes that routed to destination account

Usage:
  pussy query grid routes-to [destination] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for routes-to
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid routes

```
Query all grid routes

Usage:
  pussy query grid routes [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for routes
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query grid

```
Querying commands for the grid module

Usage:
  pussy query grid [flags]
  pussy query grid [command]

Available Commands:
  params      Query the current grid module parameters information
  route       Query grid route that routes for given source and destination accounts
  routed-from Query grid value that routed from source account
  routed-to   Query grid value that routed to destination account
  routes      Query all grid routes
  routes-from Query all grid routes that made from source account
  routes-to   Query all grid routes that routed to destination account

Flags:
  -h, --help   help for grid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query grid [command] --help" for more information about a command.

```

### pussy query ibc channel channels

```
Query all channels from a chain

Usage:
  pussy query ibc channel channels [flags]

Examples:
spacepussy query ibc channel channels

Flags:
      --count-total       count total number of records in channels to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for channels
      --limit uint        pagination limit of channels to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of channels to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of channels to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of channels to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel client-state

```
Query the client state associated with a channel, by providing its port and channel identifiers.

Usage:
  pussy query ibc channel client-state [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel client-state [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for client-state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel connections

```
Query all channels associated with a connection

Usage:
  pussy query ibc channel connections [connection-id] [flags]

Examples:
spacepussy query ibc channel connections [connection-id]

Flags:
      --count-total       count total number of records in channels associated with a connection to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for connections
      --limit uint        pagination limit of channels associated with a connection to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of channels associated with a connection to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of channels associated with a connection to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of channels associated with a connection to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel end

```
Query an IBC channel end from a port and channel identifiers

Usage:
  pussy query ibc channel end [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel end [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for end
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel next-sequence-receive

```
Query the next receive sequence for a given channel

Usage:
  pussy query ibc channel next-sequence-receive [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel next-sequence-receive [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for next-sequence-receive
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel packet-ack

```
Query a packet acknowledgement

Usage:
  pussy query ibc channel packet-ack [port-id] [channel-id] [sequence] [flags]

Examples:
spacepussy query ibc channel packet-ack [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-ack
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel packet-commitment

```
Query a packet commitment

Usage:
  pussy query ibc channel packet-commitment [port-id] [channel-id] [sequence] [flags]

Examples:
spacepussy query ibc channel packet-commitment [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-commitment
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel packet-commitments

```
Query all packet commitments associated with a channel

Usage:
  pussy query ibc channel packet-commitments [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel packet-commitments [port-id] [channel-id]

Flags:
      --count-total       count total number of records in packet commitments associated with a channel to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for packet-commitments
      --limit uint        pagination limit of packet commitments associated with a channel to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of packet commitments associated with a channel to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of packet commitments associated with a channel to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of packet commitments associated with a channel to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel packet-receipt

```
Query a packet receipt

Usage:
  pussy query ibc channel packet-receipt [port-id] [channel-id] [sequence] [flags]

Examples:
spacepussy query ibc channel packet-receipt [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-receipt
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel unreceived-acks

```
Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain.

The return value represents:
- Unreceived packet acknowledgement: packet commitment exists on original sending (executing) chain and ack exists on receiving chain.

Usage:
  pussy query ibc channel unreceived-acks [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel unreceived-acks [port-id] [channel-id] --sequences=1,2,3

Flags:
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for unreceived-acks
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string          Output format (text|json) (default "text")
      --sequences int64Slice   comma separated list of packet sequence numbers (default [])

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel unreceived-packets

```
Determine if a packet, given a list of packet commitment sequences, is unreceived.

The return value represents:
- Unreceived packet commitments: no acknowledgement exists on receiving chain for the given packet commitment sequence on sending chain.

Usage:
  pussy query ibc channel unreceived-packets [port-id] [channel-id] [flags]

Examples:
spacepussy query ibc channel unreceived-packets [port-id] [channel-id] --sequences=1,2,3

Flags:
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for unreceived-packets
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string          Output format (text|json) (default "text")
      --sequences int64Slice   comma separated list of packet sequence numbers (default [])

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc channel

```
IBC channel query subcommands

Usage:
  pussy query ibc channel [flags]
  pussy query ibc channel [command]

Available Commands:
  channels              Query all channels
  client-state          Query the client state associated with a channel
  connections           Query all channels associated with a connection
  end                   Query a channel end
  next-sequence-receive Query a next receive sequence
  packet-ack            Query a packet acknowledgement
  packet-commitment     Query a packet commitment
  packet-commitments    Query all packet commitments associated with a channel
  packet-receipt        Query a packet receipt
  unreceived-acks       Query all the unreceived acks associated with a channel
  unreceived-packets    Query all the unreceived packets associated with a channel

Flags:
  -h, --help   help for channel

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc channel [command] --help" for more information about a command.

```

### pussy query ibc client consensus-state

```
Query the consensus state for a particular light client at a given height.
If the '--latest' flag is included, the query returns the latest consensus state, overriding the height argument.

Usage:
  pussy query ibc client consensus-state [client-id] [height] [flags]

Examples:
spacepussy query ibc client  consensus-state [client-id] [height]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for consensus-state
      --latest-height   return latest stored consensus state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client consensus-states

```
Query all the consensus states from a given client state.

Usage:
  pussy query ibc client consensus-states [client-id] [flags]

Examples:
spacepussy query ibc client consensus-states [client-id]

Flags:
      --count-total       count total number of records in consensus states to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for consensus-states
      --limit uint        pagination limit of consensus states to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of consensus states to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of consensus states to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of consensus states to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client header

```
Query the latest Tendermint header of the running chain

Usage:
  pussy query ibc client header [flags]

Examples:
spacepussy query ibc client  header

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for header
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client params

```
Query the current ibc client parameters

Usage:
  pussy query ibc client params [flags]

Examples:
spacepussy query ibc client params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client self-consensus-state

```
Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.

Usage:
  pussy query ibc client self-consensus-state [flags]

Examples:
spacepussy query ibc client self-consensus-state

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for self-consensus-state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client state

```
Query stored client state

Usage:
  pussy query ibc client state [client-id] [flags]

Examples:
spacepussy query ibc client state [client-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client states

```
Query all available light clients

Usage:
  pussy query ibc client states [flags]

Examples:
spacepussy query ibc client states

Flags:
      --count-total       count total number of records in client states to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for states
      --limit uint        pagination limit of client states to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of client states to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of client states to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of client states to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client status

```
Query client activity status. Any client without an 'Active' status is considered inactive

Usage:
  pussy query ibc client status [client-id] [flags]

Examples:
spacepussy query ibc client status [client-id]

Flags:
  -h, --help   help for status

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc client

```
IBC client query subcommands

Usage:
  pussy query ibc client [flags]
  pussy query ibc client [command]

Available Commands:
  consensus-state      Query the consensus state of a client at a given height
  consensus-states     Query all the consensus states of a client.
  header               Query the latest header of the running chain
  params               Query the current ibc client parameters
  self-consensus-state Query the self consensus state for this chain
  state                Query a client state
  states               Query all available light clients
  status               Query client status

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc client [command] --help" for more information about a command.

```

### pussy query ibc connection connections

```
Query all connections ends from a chain

Usage:
  pussy query ibc connection connections [flags]

Examples:
spacepussy query ibc connection connections

Flags:
      --count-total       count total number of records in connection ends to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for connections
      --limit uint        pagination limit of connection ends to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of connection ends to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of connection ends to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of connection ends to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc connection end

```
Query stored connection end

Usage:
  pussy query ibc connection end [connection-id] [flags]

Examples:
spacepussy query ibc connection end [connection-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for end
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc connection path

```
Query stored client connection paths

Usage:
  pussy query ibc connection path [client-id] [flags]

Examples:
spacepussy query  ibc connection path [client-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for path
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc connection

```
IBC connection query subcommands

Usage:
  pussy query ibc connection [command]

Available Commands:
  connections Query all connections
  end         Query stored connection end
  path        Query stored client connection paths

Flags:
  -h, --help   help for connection

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc connection [command] --help" for more information about a command.

```

### pussy query ibc-transfer denom-hash

```
Query the denom hash info from a given denom trace

Usage:
  pussy query ibc-transfer denom-hash [trace] [flags]

Examples:
spacepussy query ibc-transfer denom-hash [denom_trace]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-hash
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc-transfer denom-trace

```
Query the denom trace info from a given trace hash

Usage:
  pussy query ibc-transfer denom-trace [hash] [flags]

Examples:
spacepussy query ibc-transfer denom-trace [hash]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-trace
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc-transfer denom-traces

```
Query the trace info for all token denominations

Usage:
  pussy query ibc-transfer denom-traces [flags]

Examples:
spacepussy query ibc-transfer denom-traces

Flags:
      --count-total       count total number of records in denominations trace to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for denom-traces
      --limit uint        pagination limit of denominations trace to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of denominations trace to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of denominations trace to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of denominations trace to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc-transfer escrow-address

```
Get the escrow address for a channel

Usage:
  pussy query ibc-transfer escrow-address [flags]

Examples:
spacepussy query ibc-transfer escrow-address [port] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for escrow-address
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc-transfer params

```
Query the current ibc-transfer parameters

Usage:
  pussy query ibc-transfer params [flags]

Examples:
spacepussy query ibc-transfer params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query ibc-transfer

```
IBC fungible token transfer query subcommands

Usage:
  pussy query ibc-transfer [command]

Available Commands:
  denom-hash     Query the denom hash info from a given denom trace
  denom-trace    Query the denom trace info from a given trace hash
  denom-traces   Query the trace info for all token denominations
  escrow-address Get the escrow address for a channel
  params         Query the current ibc-transfer parameters

Flags:
  -h, --help   help for ibc-transfer

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc-transfer [command] --help" for more information about a command.

```

### pussy query ibc

```
Querying commands for the IBC module

Usage:
  pussy query ibc [flags]
  pussy query ibc [command]

Available Commands:
  channel     IBC channel query subcommands
  client      IBC client query subcommands
  connection  IBC connection query subcommands

Flags:
  -h, --help   help for ibc

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query ibc [command] --help" for more information about a command.

```

### pussy query liquidity batch

```
Query details of a liquidity pool batch
Example:
$ spacepussy query liquidity batch 1

Usage:
  pussy query liquidity batch [pool-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for batch
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity deposit

```
Query the deposit messages on the liquidity pool batch for the specified pool-id and msg-index

If batch messages are normally processed from the endblock,
the resulting state is applied and the messages are removed from the beginning of the next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity deposit 1 20

Usage:
  pussy query liquidity deposit [pool-id] [msg-index] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for deposit
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity deposits

```
Query all deposit messages of the liquidity pool batch on the specified pool

If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity deposits 1

Usage:
  pussy query liquidity deposits [pool-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for deposits
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity params

```
Query values set as liquidity parameters.

Example:
$ spacepussy query liquidity params

Usage:
  pussy query liquidity params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity pool

```
Query details of a liquidity pool
Example:
$ spacepussy query liquidity pool 1

Example (with pool coin denom):
$ spacepussy query liquidity pool --pool-coin-denom=[denom]

Example (with reserve acc):
$ spacepussy query liquidity pool --reserve-acc=[address]

Usage:
  pussy query liquidity pool [pool-id] [flags]

Flags:
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for pool
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --pool-coin-denom string   The denomination of the pool coin
      --reserve-acc string       The Bech32 address of the reserve account

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity pools

```
Query details about all liquidity pools on a network.
Example:
$ spacepussy query liquidity pools

Usage:
  pussy query liquidity pools [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for pools
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity swap

```
Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index

If the batch message are normally processed and from the endblock,
the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity swap 1 20

Usage:
  pussy query liquidity swap [pool-id] [msg-index] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for swap
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity swaps

```
Query all swap messages in the liquidity pool batch for the specified pool-id

If batch messages are normally processed from the endblock,
the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity swaps 1

Usage:
  pussy query liquidity swaps [pool-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for swaps
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity withdraw

```
Query the withdraw messages in the liquidity pool batch for the specified pool-id and msg-index

if the batch message are normally processed from the endblock,
the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity withdraw 1 20

Usage:
  pussy query liquidity withdraw [pool-id] [msg-index] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for withdraw
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity withdraws

```
Query all withdraw messages on the liquidity pool batch for the specified pool-id

If batch messages are normally processed from the endblock,
the resulting state is applied and the messages are removed in the beginning of next block.
To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.

Example:
$ spacepussy query liquidity withdraws 1

Usage:
  pussy query liquidity withdraws [pool-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for withdraws
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query liquidity

```
Querying commands for the liquidity module

Usage:
  pussy query liquidity [flags]
  pussy query liquidity [command]

Available Commands:
  batch       Query details of a liquidity pool batch
  deposit     Query the deposit messages on the liquidity pool batch
  deposits    Query all deposit messages of the liquidity pool batch
  params      Query the values set as liquidity parameters
  pool        Query details of a liquidity pool
  pools       Query for all liquidity pools
  swap        Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index
  swaps       Query all swap messages in the liquidity pool batch
  withdraw    Query the withdraw messages in the liquidity pool batch
  withdraws   Query for all withdraw messages on the liquidity pool batch

Flags:
  -h, --help   help for liquidity

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query liquidity [command] --help" for more information about a command.

```

### pussy query mint annual-provisions

```
Query the current minting annual provisions value

Usage:
  pussy query mint annual-provisions [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for annual-provisions
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query mint inflation

```
Query the current minting inflation value

Usage:
  pussy query mint inflation [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for inflation
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query mint params

```
Query the current minting parameters

Usage:
  pussy query mint params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query mint

```
Querying commands for the minting module

Usage:
  pussy query mint [flags]
  pussy query mint [command]

Available Commands:
  annual-provisions Query the current minting annual provisions value
  inflation         Query the current minting inflation value
  params            Query the current minting parameters

Flags:
  -h, --help   help for mint

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query mint [command] --help" for more information about a command.

```

### pussy query params subspace

```
Query for raw parameters by subspace and key

Usage:
  pussy query params subspace [subspace] [key] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for subspace
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query params

```
Querying commands for the params module

Usage:
  pussy query params [flags]
  pussy query params [command]

Available Commands:
  subspace    Query for raw parameters by subspace and key

Flags:
  -h, --help   help for params

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query params [command] --help" for more information about a command.

```

### pussy query rank backlinks

```
Query backlinks of given particle

Usage:
  pussy query rank backlinks [particle] [page] [limit] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for backlinks
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank is-exist-any

```
Query is any link exist between particles

Usage:
  pussy query rank is-exist-any [from] [to] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for is-exist-any
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank is-exist

```
Query is link exist between particles for given account

Usage:
  pussy query rank is-exist [from] [to] [account] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for is-exist
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank karma

```
Query the current karma of given neuron

Usage:
  pussy query rank karma [neuron] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for karma
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank negentropy

```
Query the current negentropy of given particle

Usage:
  pussy query rank negentropy [particle] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for negentropy
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank params

```
Query the current rank parameters

Usage:
  pussy query rank params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank rank

```
Query the current rank of given particle

Usage:
  pussy query rank rank [particle] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for rank
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank search

```
Query search of given particle

Usage:
  pussy query rank search [particle] [page] [limit] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for search
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank top

```
Query top

Usage:
  pussy query rank top [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for top
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query rank

```
Querying commands for the rank module

Usage:
  pussy query rank [flags]
  pussy query rank [command]

Available Commands:
  backlinks    Query backlinks of given particle
  is-exist     Query is link exist between particles for given account
  is-exist-any Query is any link exist between particles
  karma        Query the current karma of given neuron
  negentropy   Query the current negentropy of given particle
  negentropy   Query the current negentropy of whole graph
  params       Query the current rank parameters
  rank         Query the current rank of given particle
  search       Query search of given particle
  top          Query top

Flags:
  -h, --help   help for rank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query rank [command] --help" for more information about a command.

```

### pussy query resources investmint

```
Query resources return on investmint

Usage:
  pussy query resources investmint [amount] [resource] [length] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for investmint
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query resources params

```
Query the current resources module parameters information

Usage:
  pussy query resources params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query resources

```
Querying commands for the resources module

Usage:
  pussy query resources [flags]
  pussy query resources [command]

Available Commands:
  investmint  Query resources return on investmint
  params      Query the current resources module parameters information

Flags:
  -h, --help   help for resources

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query resources [command] --help" for more information about a command.

```

### pussy query slashing params

```
Query genesis parameters for the slashing module:

$ <appd> query slashing params

Usage:
  pussy query slashing params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query slashing signing-info

```
Use a validators' consensus public key to find the signing-info for that validator:

$ <appd> query slashing signing-info '{"@type":"/cosmos.crypto.ed25519.PubKey","key":"OauFcTKbN5Lx3fJL689cikXBqe+hcp6Y+x0rYUdR9Jk="}'

Usage:
  pussy query slashing signing-info [validator-conspub] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for signing-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query slashing signing-infos

```
signing infos of validators:

$ <appd> query slashing signing-infos

Usage:
  pussy query slashing signing-infos [flags]

Flags:
      --count-total       count total number of records in signing infos to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for signing-infos
      --limit uint        pagination limit of signing infos to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of signing infos to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of signing infos to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of signing infos to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query slashing

```
Querying commands for the slashing module

Usage:
  pussy query slashing [flags]
  pussy query slashing [command]

Available Commands:
  params        Query the current slashing parameters
  signing-info  Query a validator's signing information
  signing-infos Query signing information of all validators

Flags:
  -h, --help   help for slashing

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query slashing [command] --help" for more information about a command.

```

### pussy query staking delegation

```
Query delegations for an individual delegator on an individual validator.

Example:
$ spacepussy query staking delegation pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking delegation [delegator-addr] [validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for delegation
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking delegations-to

```
Query delegations on an individual validator.

Example:
$ spacepussy query staking delegations-to pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking delegations-to [validator-addr] [flags]

Flags:
      --count-total       count total number of records in validator delegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for delegations-to
      --limit uint        pagination limit of validator delegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of validator delegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of validator delegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of validator delegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking delegations

```
Query delegations for an individual delegator on all validators.

Example:
$ spacepussy query staking delegations pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p

Usage:
  pussy query staking delegations [delegator-addr] [flags]

Flags:
      --count-total       count total number of records in delegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for delegations
      --limit uint        pagination limit of delegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of delegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of delegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of delegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking historical-info

```
Query historical info at given height.

Example:
$ spacepussy query staking historical-info 5

Usage:
  pussy query staking historical-info [height] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for historical-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking params

```
Query values set as staking parameters.

Example:
$ spacepussy query staking params

Usage:
  pussy query staking params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking pool

```
Query values for amounts stored in the staking pool.

Example:
$ spacepussy query staking pool

Usage:
  pussy query staking pool [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for pool
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking redelegation

```
Query a redelegation record for an individual delegator between a source and destination validator.

Example:
$ spacepussy query staking redelegation pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p pussyvaloper1l2rsakp388kuv9k8qzq6lrm9taddae7fpx59wm pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking redelegation [delegator-addr] [src-validator-addr] [dst-validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for redelegation
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking redelegations-from

```
Query delegations that are redelegating _from_ a validator.

Example:
$ spacepussy query staking redelegations-from pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking redelegations-from [validator-addr] [flags]

Flags:
      --count-total       count total number of records in validator redelegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for redelegations-from
      --limit uint        pagination limit of validator redelegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of validator redelegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of validator redelegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of validator redelegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking redelegations

```
Query all redelegation records for an individual delegator.

Example:
$ spacepussy query staking redelegation pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p

Usage:
  pussy query staking redelegations [delegator-addr] [flags]

Flags:
      --count-total       count total number of records in delegator redelegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for redelegations
      --limit uint        pagination limit of delegator redelegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of delegator redelegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of delegator redelegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of delegator redelegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking unbonding-delegation

```
Query unbonding delegations for an individual delegator on an individual validator.

Example:
$ spacepussy query staking unbonding-delegation pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking unbonding-delegation [delegator-addr] [validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for unbonding-delegation
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking unbonding-delegations-from

```
Query delegations that are unbonding _from_ a validator.

Example:
$ spacepussy query staking unbonding-delegations-from pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking unbonding-delegations-from [validator-addr] [flags]

Flags:
      --count-total       count total number of records in unbonding delegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for unbonding-delegations-from
      --limit uint        pagination limit of unbonding delegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of unbonding delegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of unbonding delegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking unbonding-delegations

```
Query unbonding delegations for an individual delegator.

Example:
$ spacepussy query staking unbonding-delegations pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p

Usage:
  pussy query staking unbonding-delegations [delegator-addr] [flags]

Flags:
      --count-total       count total number of records in unbonding delegations to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for unbonding-delegations
      --limit uint        pagination limit of unbonding delegations to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of unbonding delegations to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of unbonding delegations to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking validator

```
Query details about an individual validator.

Example:
$ spacepussy query staking validator pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj

Usage:
  pussy query staking validator [validator-addr] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for validator
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking validators

```
Query details about all validators on a network.

Example:
$ spacepussy query staking validators

Usage:
  pussy query staking validators [flags]

Flags:
      --count-total       count total number of records in validators to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for validators
      --limit uint        pagination limit of validators to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of validators to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of validators to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of validators to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query staking

```
Querying commands for the staking module

Usage:
  pussy query staking [flags]
  pussy query staking [command]

Available Commands:
  delegation                 Query a delegation based on address and validator address
  delegations                Query all delegations made by one delegator
  delegations-to             Query all delegations made to one validator
  historical-info            Query historical info at given height
  params                     Query the current staking parameters information
  pool                       Query the current staking pool values
  redelegation               Query a redelegation record based on delegator and a source and destination validator address
  redelegations              Query all redelegations records for one delegator
  redelegations-from         Query all outgoing redelegatations from a validator
  unbonding-delegation       Query an unbonding-delegation record based on delegator and validator address
  unbonding-delegations      Query all unbonding-delegations records for one delegator
  unbonding-delegations-from Query all unbonding delegatations from a validator
  validator                  Query a validator
  validators                 Query for all validators

Flags:
  -h, --help   help for staking

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query staking [command] --help" for more information about a command.

```

### pussy query tendermint-validator-set

```
Get the full tendermint validator set at given height

Usage:
  pussy query tendermint-validator-set [height] [flags]

Flags:
  -h, --help                     help for tendermint-validator-set
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --limit int                Query number of results returned per page (default 100)
  -n, --node string              Node to connect to (default "tcp://localhost:26657")
      --page int                 Query a specific page of paginated results (default 1)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query tx

```
Example:
$ spacepussy query tx <hash>
$ spacepussy query tx --type=acc_seq <addr>/<sequence>
$ spacepussy query tx --type=signature <sig1_base64>,<sig2_base64...>

Usage:
  pussy query tx --type=[hash|acc_seq|signature] [hash|acc_seq|signature] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for tx
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --type string     The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query txs

```
Search for transactions that match the exact given events where results are paginated.
Each event takes the form of '{eventType}.{eventAttribute}={value}'. Please refer
to each module's documentation for the full set of events to query for. Each module
documents its respective events under 'xx_events.md'.

Example:
$ spacepussy query txs --events 'message.sender=cosmos1...&message.action=withdraw_delegator_reward' --page 1 --limit 30

Usage:
  pussy query txs [flags]

Flags:
      --events string   list of transaction events in the form of {eventType}.{eventAttribute}={value}
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for txs
      --limit int       Query number of transactions results per page returned (default 30)
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --page int        Query a specific page of paginated results (default 1)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query upgrade applied

```
If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied.
This helps a client determine which binary was valid over a given range of blocks, as well as more context to understand past migrations.

Usage:
  pussy query upgrade applied [upgrade-name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for applied
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query upgrade module_versions

```
Gets a list of module names and their respective consensus versions.
Following the command with a specific module name will return only
that module's information.

Usage:
  pussy query upgrade module_versions [optional module_name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for module_versions
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query upgrade plan

```
Gets the currently scheduled upgrade plan, if one exists

Usage:
  pussy query upgrade plan [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for plan
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query upgrade

```
Querying commands for the upgrade module

Usage:
  pussy query upgrade [command]

Available Commands:
  applied         block header for height at which a completed upgrade was applied
  module_versions get the list of module versions
  plan            get upgrade plan (if one exists)

Flags:
  -h, --help   help for upgrade

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query upgrade [command] --help" for more information about a command.

```

### pussy query wasm code-info

```
Prints out metadata of a code id

Usage:
  pussy query wasm code-info [code_id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for code-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm code

```
Downloads wasm bytecode for given code id

Usage:
  pussy query wasm code [code_id] [output filename] [flags]

Aliases:
  code, source-code, source

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for code
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm contract-history

```
Prints out the code history for a contract given its address

Usage:
  pussy query wasm contract-history [bech32_address] [flags]

Aliases:
  contract-history, history, hist, ch

Flags:
      --count-total       count total number of records in contract history to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for contract-history
      --limit uint        pagination limit of contract history to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of contract history to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of contract history to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of contract history to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm contract-state all

```
Prints out all internal state of a contract given its address

Usage:
  pussy query wasm contract-state all [bech32_address] [flags]

Flags:
      --count-total       count total number of records in contract state to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for all
      --limit uint        pagination limit of contract state to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of contract state to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of contract state to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of contract state to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm contract-state raw

```
Prints out internal state for of a contract given its address

Usage:
  pussy query wasm contract-state raw [bech32_address] [key] [flags]

Flags:
      --ascii           ascii encoded key argument
      --b64             base64 encoded key argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for raw
      --hex             hex encoded  key argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm contract-state smart

```
Calls contract with given address with query data and prints the returned result

Usage:
  pussy query wasm contract-state smart [bech32_address] [query] [flags]

Flags:
      --ascii           ascii encoded query argument
      --b64             base64 encoded query argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for smart
      --hex             hex encoded  query argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm contract-state

```
Querying commands for the wasm module

Usage:
  pussy query wasm contract-state [flags]
  pussy query wasm contract-state [command]

Aliases:
  contract-state, state, cs, s

Available Commands:
  all         Prints out all internal state of a contract given its address
  raw         Prints out internal state for key of a contract given its address
  smart       Calls contract with given address with query data and prints the returned result

Flags:
  -h, --help   help for contract-state

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query wasm contract-state [command] --help" for more information about a command.

```

### pussy query wasm contract

```
Prints out metadata of a contract given its address

Usage:
  pussy query wasm contract [bech32_address] [flags]

Aliases:
  contract, meta, c

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for contract
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm libwasmvm-version

```
Get libwasmvm version

Usage:
  pussy query wasm libwasmvm-version [flags]

Aliases:
  libwasmvm-version, lib-version

Flags:
  -h, --help   help for libwasmvm-version

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm list-code

```
List all wasm bytecode on the chain

Usage:
  pussy query wasm list-code [flags]

Aliases:
  list-code, list-codes, codes, lco

Flags:
      --count-total       count total number of records in list codes to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for list-code
      --limit uint        pagination limit of list codes to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list codes to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list codes to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm list-contract-by-code

```
List wasm all bytecode on the chain for given code id

Usage:
  pussy query wasm list-contract-by-code [code_id] [flags]

Aliases:
  list-contract-by-code, list-contracts-by-code, list-contracts, contracts, lca

Flags:
      --count-total       count total number of records in list contracts by code to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for list-contract-by-code
      --limit uint        pagination limit of list contracts by code to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list contracts by code to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list contracts by code to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list contracts by code to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm pinned

```
		Long:    List all pinned code ids,

Usage:
  pussy query wasm pinned [flags]

Flags:
      --count-total       count total number of records in list codes to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for pinned
      --limit uint        pagination limit of list codes to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list codes to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list codes to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy query wasm

```
Querying commands for the wasm module

Usage:
  pussy query wasm [flags]
  pussy query wasm [command]

Available Commands:
  code                  Downloads wasm bytecode for given code id
  code-info             Prints out metadata of a code id
  contract              Prints out metadata of a contract given its address
  contract-history      Prints out the code history for a contract given its address
  contract-state        Querying commands for the wasm module
  libwasmvm-version     Get libwasmvm version
  list-code             List all wasm bytecode on the chain
  list-contract-by-code List wasm all bytecode on the chain for given code id
  pinned                List all pinned code ids

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query wasm [command] --help" for more information about a command.

```

### pussy query

```
Querying subcommands

Usage:
  pussy query [flags]
  pussy query [command]

Aliases:
  query, q

Available Commands:
  account                  Query for account by address
  auth                     Querying commands for the auth module
  authz                    Querying commands for the authz module
  bandwidth                Querying commands for the bandwidth module
  bank                     Querying commands for the bank module
  block                    Get verified data for a the block at given height
  distribution             Querying commands for the distribution module
  dmn                      Querying commands for the dmn module
  evidence                 Query for evidence by hash or for all (paginated) submitted evidence
  feegrant                 Querying commands for the feegrant module
  gov                      Querying commands for the governance module
  graph                    Querying commands for the graph module
  grid                     Querying commands for the grid module
  ibc                      Querying commands for the IBC module
  ibc-transfer             IBC fungible token transfer query subcommands
  liquidity                Querying commands for the liquidity module
  mint                     Querying commands for the minting module
  params                   Querying commands for the params module
  rank                     Querying commands for the rank module
  resources                Querying commands for the resources module
  slashing                 Querying commands for the slashing module
  staking                  Querying commands for the staking module
  tendermint-validator-set Get the full tendermint validator set at given height
  tx                       Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
  txs                      Query for paginated transactions that match a set of events
  upgrade                  Querying commands for the upgrade module
  wasm                     Querying commands for the wasm module

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for query

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy query [command] --help" for more information about a command.

```

### pussy rollback

```

A state rollback is performed to recover from an incorrect application state transition,
when Tendermint has persisted an incorrect app hash and is thus unable to make
progress. Rollback overwrites a state at height n with the state at height n - 1.
The application also roll back to height n - 1. No blocks are removed, so upon
restarting Tendermint the transactions in block n will be re-executed against the
application.

Usage:
  pussy rollback [flags]

Flags:
  -h, --help   help for rollback

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy start

```
Run the full node application with Tendermint in or out of process. By
default, the application will run with Tendermint in process.

Pruning options can be provided via the '--pruning' flag or alternatively with '--pruning-keep-recent',
'pruning-keep-every', and 'pruning-interval' together.

For '--pruning' the options are as follows:

default: the last 100 states are kept in addition to every 500th state; pruning at 10 block intervals
nothing: all historic states will be saved, nothing will be deleted (i.e. archiving node)
everything: all saved states will be deleted, storing only the current and previous state; pruning at 10 block intervals
custom: allow pruning options to be manually specified through 'pruning-keep-recent', 'pruning-keep-every', and 'pruning-interval'

Node halting configurations exist in the form of two flags: '--halt-height' and '--halt-time'. During
the ABCI Commit phase, the node will check if the current block height is greater than or equal to
the halt-height or if the current block time is greater than or equal to the halt-time. If so, the
node will attempt to gracefully shutdown and the block will not be committed. In addition, the node
will not be able to commit subsequent blocks.

For profiling and benchmarking purposes, CPU profiling can be enabled via the '--cpu-profile' flag
which accepts a path for the resulting pprof file.

The node may be started in a 'query only' mode where only the gRPC and JSON HTTP
API services are enabled via the 'grpc-only' flag. In this mode, Tendermint is
bypassed and can be used when legacy queries are needed after an on-chain upgrade
is performed. Note, when enabled, gRPC will also be automatically enabled.

Usage:
  pussy start [flags]

Flags:
      --abci string                                     specify abci transport (socket | grpc) (default "socket")
      --address string                                  Listen address (default "tcp://0.0.0.0:26658")
      --compute-gpu                                     Compute on GPU (default true)
      --consensus.create_empty_blocks                   set this to false to only produce blocks when there are txs or when the AppHash changes (default true)
      --consensus.create_empty_blocks_interval string   the possible interval between empty blocks (default "0s")
      --consensus.double_sign_check_height int          how many blocks to look back to check existence of the node's consensus votes before joining consensus
      --cpu-profile string                              Enable CPU profiling and write to the provided file
      --db_backend string                               database backend: goleveldb | cleveldb | boltdb | rocksdb | badgerdb (default "goleveldb")
      --db_dir string                                   database directory (default "data")
      --fast_sync                                       fast blockchain syncing (default true)
      --genesis_hash bytesHex                           optional SHA-256 hash of the genesis file
      --grpc-only                                       Start the node in gRPC query only mode (no Tendermint process is started)
      --grpc-web.address string                         The gRPC-Web server address to listen on (default "0.0.0.0:9091")
      --grpc-web.enable                                 Define if the gRPC-Web server should be enabled. (Note: gRPC must also be enabled.) (default true)
      --grpc.address string                             the gRPC server address to listen on (default "0.0.0.0:9090")
      --grpc.enable                                     Define if the gRPC server should be enabled (default true)
      --halt-height uint                                Block height at which to gracefully halt the chain and shutdown the node
      --halt-time uint                                  Minimum block time (in Unix seconds) at which to gracefully halt the chain and shutdown the node
  -h, --help                                            help for start
      --inter-block-cache                               Enable inter-block caching (default true)
      --inv-check-period uint                           Assert registered invariants every N blocks
      --min-retain-blocks uint                          Minimum block height offset during ABCI commit to prune Tendermint blocks
      --minimum-gas-prices string                       Minimum gas prices to accept for transactions; Any fee in a tx must meet this minimum (e.g. 0.01photino;0.0001stake)
      --moniker string                                  node name (default "Pro16.local")
      --p2p.laddr string                                node listen address. (0.0.0.0:0 means any interface, any port) (default "tcp://0.0.0.0:26656")
      --p2p.persistent_peers string                     comma-delimited ID@host:port persistent peers
      --p2p.pex                                         enable/disable Peer-Exchange (default true)
      --p2p.private_peer_ids string                     comma-delimited private peer IDs
      --p2p.seed_mode                                   enable/disable seed mode
      --p2p.seeds string                                comma-delimited ID@host:port seed nodes
      --p2p.unconditional_peer_ids string               comma-delimited IDs of unconditional peers
      --p2p.upnp                                        enable/disable UPNP port forwarding
      --priv_validator_laddr string                     socket address to listen on for connections from external priv_validator process
      --proxy_app string                                proxy app address, or one of: 'kvstore', 'persistent_kvstore', 'counter', 'e2e' or 'noop' for local testing. (default "tcp://127.0.0.1:26658")
      --pruning string                                  Pruning strategy (default|nothing|everything|custom) (default "default")
      --pruning-interval uint                           Height interval at which pruned heights are removed from disk (ignored if pruning is not 'custom')
      --pruning-keep-every uint                         Offset heights to keep on disk after 'keep-every' (ignored if pruning is not 'custom')
      --pruning-keep-recent uint                        Number of recent heights to keep on disk (ignored if pruning is not 'custom')
      --rpc.grpc_laddr string                           GRPC listen address (BroadcastTx only). Port required
      --rpc.laddr string                                RPC listen address. Port required (default "tcp://127.0.0.1:26657")
      --rpc.pprof_laddr string                          pprof listen address (https://golang.org/pkg/net/http/pprof)
      --rpc.unsafe                                      enabled unsafe rpc methods
      --search-api                                      Run search API
      --state-sync.snapshot-interval uint               State sync snapshot interval
      --state-sync.snapshot-keep-recent uint32          State sync snapshot to keep (default 2)
      --trace-store string                              Enable KVStore tracing to an output file
      --transport string                                Transport protocol: socket, grpc (default "socket")
      --unsafe-skip-upgrades ints                       Skip a set of upgrade heights to continue the old binary
      --wasm.memory_cache_size uint32                   Sets the size in MiB (NOT bytes) of an in-memory cache for Wasm modules. Set to 0 to disable. (default 100)
      --wasm.query_gas_limit uint                       Set the max gas that can be spent on executing a query with a Wasm contract (default 3000000)
      --wasm.simulation_gas_limit string                Set the max gas that can be spent when executing a simulation TX
      --with-tendermint                                 Run abci app embedded in-process with tendermint (default true)
      --x-crisis-skip-assert-invariants                 Skip x/crisis invariants check on startup

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy status

```
Query remote node for status

Usage:
  pussy status [flags]

Flags:
  -h, --help          help for status
  -n, --node string   Node to connect to (default "tcp://localhost:26657")

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint reset-state

```
Remove all the data and WAL

Usage:
  pussy tendermint reset-state [flags]

Flags:
  -h, --help   help for reset-state

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint show-address

```
Shows this node's tendermint validator consensus address

Usage:
  pussy tendermint show-address [flags]

Flags:
  -h, --help   help for show-address

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint show-node-id

```
Show this node's ID

Usage:
  pussy tendermint show-node-id [flags]

Flags:
  -h, --help   help for show-node-id

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint show-validator

```
Show this node's tendermint validator info

Usage:
  pussy tendermint show-validator [flags]

Flags:
  -h, --help   help for show-validator

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint unsafe-reset-all

```
(unsafe) Remove all the data and WAL, reset this node's validator to genesis state

Usage:
  pussy tendermint unsafe-reset-all [flags]

Aliases:
  unsafe-reset-all, unsafe_reset_all

Flags:
  -h, --help             help for unsafe-reset-all
      --keep-addr-book   keep the address book intact

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint version

```
Print protocols' and libraries' version numbers
against which this app has been compiled.

Usage:
  pussy tendermint version [flags]

Flags:
  -h, --help   help for version

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tendermint

```
Tendermint subcommands

Usage:
  pussy tendermint [command]

Available Commands:
  reset-state      Remove all the data and WAL
  show-address     Shows this node's tendermint validator consensus address
  show-node-id     Show this node's ID
  show-validator   Show this node's tendermint validator info
  unsafe-reset-all (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
  version          Print tendermint libraries' version

Flags:
  -h, --help   help for tendermint

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tendermint [command] --help" for more information about a command.

```

### pussy testnet

```
testnet will create "v" number of directories and populate each with
necessary files (private validator, genesis, config, etc.).

Note, strict routability for addresses is turned off in the config file.

Example:
	cyber testnet --v 4 --output-dir ./output --starting-ip-address 192.168.10.2

Usage:
  pussy testnet [flags]

Flags:
      --algo string                  Key signing algorithm to generate keys for (default "secp256k1")
      --chain-id string              genesis file chain-id, if left blank will be randomly created
  -h, --help                         help for testnet
      --keyring-backend string       Select keyring's backend (os|file|test) (default "os")
      --minimum-gas-prices string    Minimum gas prices to accept for transactions; All fees in a tx must meet this minimum (e.g. 0.01photino,0.001stake) (default "0.000006stake")
      --node-daemon-home string      Home directory of the node's daemon configuration (default "cyber")
      --node-dir-prefix string       Prefix the directory name for each node with (node results in node0, node1, ...) (default "node")
  -o, --output-dir string            Directory to store initialization data for the testnet (default "./mytestnet")
      --starting-ip-address string   Starting IP address (192.168.0.1 results in persistent peers list ID0@192.168.0.1:46656, ID1@192.168.0.2:46656, ...) (default "192.168.0.1")
      --v int                        Number of validators to initialize the testnet with (default 4)

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx authz exec

```
execute tx on behalf of granter account:
Example:
 $ spacepussy tx authz exec tx.json --from grantee
 $ spacepussy tx bank send <granter> <recipient> --from <granter> --chain-id <chain-id> --generate-only > tx.json && spacepussy tx authz exec tx.json --from grantee

Usage:
  pussy tx authz exec [msg_tx_json_file] --from [grantee] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for exec
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx authz grant

```
grant authorization to an address to execute a transaction on your behalf:

Examples:
 $ spacepussy tx authz grant cosmos1skjw.. send /cosmos.bank.v1beta1.MsgSend --spend-limit=1000stake --from=cosmos1skl..
 $ spacepussy tx authz grant cosmos1skjw.. generic --msg-type=/cosmos.gov.v1beta1.MsgVote --from=cosmos1sk..

Usage:
  pussy tx authz grant <grantee> <authorization_type="send"|"generic"|"delegate"|"unbond"|"redelegate"> --from <granter> [flags]

Flags:
  -a, --account-number uint          The account number of the signing account (offline mode only)
      --allowed-validators strings   Allowed validators addresses separated by ,
  -b, --broadcast-mode string        Transaction broadcasting mode (sync|async|block) (default "sync")
      --deny-validators strings      Deny validators addresses separated by ,
      --dry-run                      ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --expiration int               The Unix timestamp. Default is one year. (default 1700482371)
      --fee-account string           Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                  Fees to pay along with transaction; eg: 10uatom
      --from string                  Name or address of private key with which to sign
      --gas string                   gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float         adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string            Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                         help for grant
      --keyring-backend string       Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string           The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                       Use a connected Ledger device
      --msg-type string              The Msg method name for which we are creating a GenericAuthorization
      --node string                  <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                  Note to add a description to the transaction (previously --memo)
      --offline                      Offline mode (does not allow any online functionality
  -o, --output string                Output format (text|json) (default "json")
  -s, --sequence uint                The sequence number of the signing account (offline mode only)
      --sign-mode string             Choose sign mode (direct|amino-json), this is an advanced feature
      --spend-limit string           SpendLimit for Send Authorization, an array of Coins allowed spend
      --timeout-height uint          Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                          Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx authz revoke

```
revoke authorization from a granter to a grantee:
Example:
 $ spacepussy tx authz revoke cosmos1skj.. /cosmos.bank.v1beta1.MsgSend --from=cosmos1skj..

Usage:
  pussy tx authz revoke [grantee] [msg_type] --from=[granter] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for revoke
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx authz

```
Authorize and revoke access to execute transactions on behalf of your address

Usage:
  pussy tx authz [flags]
  pussy tx authz [command]

Available Commands:
  exec        execute tx on behalf of granter account
  grant       Grant authorization to an address
  revoke      revoke authorization

Flags:
  -h, --help   help for authz

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx authz [command] --help" for more information about a command.

```

### pussy tx bank send

```
Send funds from one account to another. Note, the'--from' flag is
ignored as it is implied from [from_key_or_address].

Usage:
  pussy tx bank send [from_key_or_address] [to_address] [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for send
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx bank

```
Bank transaction subcommands

Usage:
  pussy tx bank [flags]
  pussy tx bank [command]

Available Commands:
  send        Send funds from one account to another. Note, the'--from' flag is
ignored as it is implied from [from_key_or_address].

Flags:
  -h, --help   help for bank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx bank [command] --help" for more information about a command.

```

### pussy tx broadcast

```
Broadcast transactions created with the --generate-only
flag and signed with the sign command. Read a transaction from [file_path] and
broadcast it to a node. If you supply a dash (-) argument in place of an input
filename, the command reads from standard input.

$ <appd> tx broadcast ./mytxn.json

Usage:
  pussy tx broadcast [file_path] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for broadcast
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx crisis invariant-broken

```
Submit proof that an invariant broken to halt the chain

Usage:
  pussy tx crisis invariant-broken [module-name] [invariant-route] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for invariant-broken
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx crisis

```
Crisis transactions subcommands

Usage:
  pussy tx crisis [flags]
  pussy tx crisis [command]

Available Commands:
  invariant-broken Submit proof that an invariant broken to halt the chain

Flags:
  -h, --help   help for crisis

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx crisis [command] --help" for more information about a command.

```

### pussy tx decode

```
Decode a binary encoded transaction string

Usage:
  pussy tx decode [amino-byte-string] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for decode
  -x, --hex                      Treat input as hexadecimal instead of base64
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx distribution fund-community-pool

```
Funds the community pool with the specified amount

Example:
$ spacepussy tx distribution fund-community-pool 100uatom --from mykey

Usage:
  pussy tx distribution fund-community-pool [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for fund-community-pool
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx distribution set-withdraw-addr

```
Set the withdraw address for rewards associated with a delegator address.

Example:
$ spacepussy tx distribution set-withdraw-addr pussy1gghjut3ccd8ay0zduzj64hwre2fxs9ld75ru9p --from mykey

Usage:
  pussy tx distribution set-withdraw-addr [withdraw-addr] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for set-withdraw-addr
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx distribution withdraw-all-rewards

```
Withdraw all rewards for a single delegator.
Note that if you use this command with --broadcast-mode=sync or --broadcast-mode=async, the max-msgs flag will automatically be set to 0.

Example:
$ spacepussy tx distribution withdraw-all-rewards --from mykey

Usage:
  pussy tx distribution withdraw-all-rewards [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for withdraw-all-rewards
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --max-msgs int             Limit the number of messages per tx (0 for unlimited)
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx distribution withdraw-rewards

```
Withdraw rewards from a given delegation address,
and optionally withdraw validator commission if the delegation address given is a validator operator.

Example:
$ spacepussy tx distribution withdraw-rewards pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj --from mykey
$ spacepussy tx distribution withdraw-rewards pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj --from mykey --commission

Usage:
  pussy tx distribution withdraw-rewards [validator-addr] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --commission               Withdraw the validator's commission in addition to the rewards
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for withdraw-rewards
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx distribution

```
Distribution transactions subcommands

Usage:
  pussy tx distribution [flags]
  pussy tx distribution [command]

Available Commands:
  fund-community-pool  Funds the community pool with the specified amount
  set-withdraw-addr    change the default withdraw address for rewards associated with an address
  withdraw-all-rewards withdraw all delegations rewards for a delegator
  withdraw-rewards     Withdraw rewards from a given delegation address, and optionally withdraw validator commission if the delegation address given is a validator operator

Flags:
  -h, --help   help for distribution

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx distribution [command] --help" for more information about a command.

```

### pussy tx encode

```
Encode transactions created with the --generate-only flag and signed with the sign command.
Read a transaction from <file>, serialize it to the Amino wire protocol, and output it as base64.
If you supply a dash (-) argument in place of an input filename, the command reads from standard input.

Usage:
  pussy tx encode [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for encode
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx evidence

```
Evidence transaction subcommands

Usage:
  pussy tx evidence [flags]

Flags:
  -h, --help   help for evidence

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx feegrant grant

```
Grant authorization to pay fees from your address. Note, the'--from' flag is
				ignored as it is implied from [granter].

Examples:
spacepussy tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z or
spacepussy tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --period 3600 --period-limit 10stake --expiration 36000 or
spacepussy tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z 
	--allowed-messages "/cosmos.gov.v1beta1.MsgSubmitProposal,/cosmos.gov.v1beta1.MsgVote"

Usage:
  pussy tx feegrant grant [granter_key_or_address] [grantee] [flags]

Flags:
  -a, --account-number uint        The account number of the signing account (offline mode only)
      --allowed-messages strings   Set of allowed messages for fee allowance
  -b, --broadcast-mode string      Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                    ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --expiration string          The RFC 3339 timestamp after which the grant expires for the user
      --fee-account string         Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                Fees to pay along with transaction; eg: 10uatom
      --from string                Name or address of private key with which to sign
      --gas string                 gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float       adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string          Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only              Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                       help for grant
      --keyring-backend string     Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string         The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                     Use a connected Ledger device
      --node string                <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                Note to add a description to the transaction (previously --memo)
      --offline                    Offline mode (does not allow any online functionality
  -o, --output string              Output format (text|json) (default "json")
      --period int                 period specifies the time duration in which period_spend_limit coins can be spent before that allowance is reset
      --period-limit string        period limit specifies the maximum number of coins that can be spent in the period
  -s, --sequence uint              The sequence number of the signing account (offline mode only)
      --sign-mode string           Choose sign mode (direct|amino-json), this is an advanced feature
      --spend-limit string         Spend limit specifies the max limit can be used, if not mentioned there is no limit
      --timeout-height uint        Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                        Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx feegrant revoke

```
revoke fee grant from a granter to a grantee. Note, the'--from' flag is
			ignored as it is implied from [granter].

Example:
 $ spacepussy tx feegrant revoke cosmos1skj.. cosmos1skj..

Usage:
  pussy tx feegrant revoke [granter] [grantee] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for revoke
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx feegrant

```
Grant and revoke fee allowance for a grantee by a granter

Usage:
  pussy tx feegrant [flags]
  pussy tx feegrant [command]

Available Commands:
  grant       Grant Fee allowance to an address
  revoke      revoke fee-grant

Flags:
  -h, --help   help for feegrant

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx feegrant [command] --help" for more information about a command.

```

### pussy tx gov deposit

```
Submit a deposit for an active proposal. You can
find the proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy tx gov deposit 1 10stake --from mykey

Usage:
  pussy tx gov deposit [proposal-id] [deposit] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for deposit
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal cancel-software-upgrade

```
Cancel a software upgrade along with an initial deposit.

Usage:
  pussy tx gov submit-proposal cancel-software-upgrade [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           deposit of proposal
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for cancel-software-upgrade
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             title of proposal
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal clear-contract-admin

```
Submit a clear admin for a contract to prevent further migrations proposal

Usage:
  pussy tx gov submit-proposal clear-contract-admin [contract_addr_bech32] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for clear-contract-admin
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal community-pool-spend

```
Submit a community pool spend proposal along with an initial deposit.
The proposal details must be supplied via a JSON file.

Example:
$ spacepussy tx gov submit-proposal community-pool-spend <path/to/proposal.json> --from=<key_or_address>

Where proposal.json contains:

{
  "title": "Community Pool Spend",
  "description": "Pay me some Atoms!",
  "recipient": "pussy1s5afhd6gxevu37mkqcvvsj8qeylhn0rz46zdlq",
  "amount": "1000stake",
  "deposit": "1000stake"
}

Usage:
  pussy tx gov submit-proposal community-pool-spend [proposal-file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for community-pool-spend
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal execute-contract

```
Submit a execute wasm contract proposal (run by any address)

Usage:
  pussy tx gov submit-proposal execute-contract [contract_addr_bech32] [json_encoded_migration_args] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amount string            Coins to send to the contract during instantiation
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for execute-contract
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
      --run-as string            The address that is passed as sender to the contract on proposal execution
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal ibc-upgrade

```
Submit an IBC client breaking upgrade proposal along with an initial deposit.
The client state specified is the upgraded client state representing the upgraded chain
Example Upgraded Client State JSON: 
{
	"@type":"/ibc.lightclients.tendermint.v1.ClientState",
 	"chain_id":"testchain1",
	"unbonding_period":"1814400s",
	"latest_height":{"revision_number":"0","revision_height":"2"},
	"proof_specs":[{"leaf_spec":{"hash":"SHA256","prehash_key":"NO_HASH","prehash_value":"SHA256","length":"VAR_PROTO","prefix":"AA=="},"inner_spec":{"child_order":[0,1],"child_size":33,"min_prefix_length":4,"max_prefix_length":12,"empty_child":null,"hash":"SHA256"},"max_depth":0,"min_depth":0},{"leaf_spec":{"hash":"SHA256","prehash_key":"NO_HASH","prehash_value":"SHA256","length":"VAR_PROTO","prefix":"AA=="},"inner_spec":{"child_order":[0,1],"child_size":32,"min_prefix_length":1,"max_prefix_length":1,"empty_child":null,"hash":"SHA256"},"max_depth":0,"min_depth":0}],
	"upgrade_path":["upgrade","upgradedIBCState"],
}

Usage:
  pussy tx gov submit-proposal ibc-upgrade [name] [height] [path/to/upgraded_client_state.json] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           deposit of proposal
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for ibc-upgrade
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             title of proposal
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal instantiate-contract

```
Submit an instantiate wasm contract proposal

Usage:
  pussy tx gov submit-proposal instantiate-contract [code_id_int64] [json_encoded_init_args] --label [text] --title [text] --description [text] --run-as [address] --admin [address,optional] --amount [coins,optional] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --admin string             Address of an admin
      --amount string            Coins to send to the contract during instantiation
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for instantiate-contract
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --label string             A human-readable name for this contract in lists
      --ledger                   Use a connected Ledger device
      --no-admin                 You must set this explicitly if you don't want an admin
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
      --run-as string            The address that pays the init funds. It is the creator of the contract and passed to the contract as sender on proposal execution
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal migrate-contract

```
Submit a migrate wasm contract to a new code version proposal

Usage:
  pussy tx gov submit-proposal migrate-contract [contract_addr_bech32] [new_code_id_int64] [json_encoded_migration_args] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for migrate-contract
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal param-change

```
Submit a parameter proposal along with an initial deposit.
The proposal details must be supplied via a JSON file. For values that contains
objects, only non-empty fields will be updated.

IMPORTANT: Currently parameter changes are evaluated but not validated, so it is
very important that any "value" change is valid (ie. correct type and within bounds)
for its respective parameter, eg. "MaxValidators" should be an integer and not a decimal.

Proper vetting of a parameter change proposal should prevent this from happening
(no deposits should occur during the governance process), but it should be noted
regardless.

Example:
$ spacepussy tx gov submit-proposal param-change <path/to/proposal.json> --from=<key_or_address>

Where proposal.json contains:

{
  "title": "Staking Param Change",
  "description": "Update max validators",
  "changes": [
    {
      "subspace": "staking",
      "key": "MaxValidators",
      "value": 105
    }
  ],
  "deposit": "1000stake"
}

Usage:
  pussy tx gov submit-proposal param-change [proposal-file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for param-change
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal pin-codes

```
Submit a pin code proposal for pinning a code to cache

Usage:
  pussy tx gov submit-proposal pin-codes [code-ids] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for pin-codes
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal set-contract-admin

```
Submit a new admin for a contract proposal

Usage:
  pussy tx gov submit-proposal set-contract-admin [contract_addr_bech32] [new_admin_addr_bech32] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for set-contract-admin
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal software-upgrade

```
Submit a software upgrade along with an initial deposit.
Please specify a unique name and height for the upgrade to take effect.
You may include info to reference a binary download link, in a format compatible with: https://github.com/cosmos/cosmos-sdk/tree/master/cosmovisor

Usage:
  pussy tx gov submit-proposal software-upgrade [name] (--upgrade-height [height]) (--upgrade-info [info]) [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           deposit of proposal
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for software-upgrade
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             title of proposal
      --upgrade-height int       The height at which the upgrade must happen
      --upgrade-info string      Optional info for the planned upgrade such as commit hash, etc.
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal sudo-contract

```
Submit a sudo wasm contract proposal (to call privileged commands)

Usage:
  pussy tx gov submit-proposal sudo-contract [contract_addr_bech32] [json_encoded_migration_args] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for sudo-contract
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal unpin-codes

```
Submit a unpin code proposal for unpinning a code to cache

Usage:
  pussy tx gov submit-proposal unpin-codes [code-ids] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for unpin-codes
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal update-client

```
Submit an update IBC client proposal along with an initial deposit.
Please specify a subject client identifier you want to update..
Please specify the substitute client the subject client will be updated to.

Usage:
  pussy tx gov submit-proposal update-client [subject-client-id] [substitute-client-id] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           deposit of proposal
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for update-client
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             title of proposal
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal update-instantiate-config

```
Submit an update instantiate config  proposal for multiple code ids.

Example: 
$ spacepussy tx gov submit-proposal update-instantiate-config 1,nobody 2,everybody 3,pussy1l2rsakp388kuv9k8qzq6lrm9taddae7fpx59wm

Usage:
  pussy tx gov submit-proposal update-instantiate-config [code-id,permission]... [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           Deposit of proposal
      --description string       Description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for update-instantiate-config
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             Title of proposal
      --type string              Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal wasm-store

```
Submit a wasm binary proposal

Usage:
  pussy tx gov submit-proposal wasm-store [wasm file] --title [text] --description [text] --run-as [address] [flags]

Flags:
  -a, --account-number uint               The account number of the signing account (offline mode only)
  -b, --broadcast-mode string             Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string                    Deposit of proposal
      --description string                Description of proposal
      --dry-run                           ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string                Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                       Fees to pay along with transaction; eg: 10uatom
      --from string                       Name or address of private key with which to sign
      --gas string                        gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float              adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                 Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                     Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                              help for wasm-store
      --instantiate-everybody string      Everybody can instantiate a contract from the code, optional
      --instantiate-nobody string         Nobody except the governance process can instantiate a contract from the code, optional
      --instantiate-only-address string   Only this address can instantiate a contract instance from the code, optional
      --keyring-backend string            Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                            Use a connected Ledger device
      --node string                       <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                       Note to add a description to the transaction (previously --memo)
      --offline                           Offline mode (does not allow any online functionality
  -o, --output string                     Output format (text|json) (default "json")
      --proposal string                   Proposal file path (if this path is given, other proposal flags are ignored)
      --run-as string                     The address that is stored as code creator
  -s, --sequence uint                     The sequence number of the signing account (offline mode only)
      --sign-mode string                  Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint               Set a block timeout height to prevent the tx from being committed past a certain height
      --title string                      Title of proposal
      --type string                       Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
  -y, --yes                               Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov submit-proposal

```
Submit a proposal along with an initial deposit.
Proposal title, description, type and deposit can be given directly or through a proposal JSON file.

Example:
$ spacepussy tx gov submit-proposal --proposal="path/to/proposal.json" --from mykey

Where proposal.json contains:

{
  "title": "Test Proposal",
  "description": "My awesome proposal",
  "type": "Text",
  "deposit": "10test"
}

Which is equivalent to:

$ spacepussy tx gov submit-proposal --title="Test Proposal" --description="My awesome proposal" --type="Text" --deposit="10test" --from mykey

Usage:
  pussy tx gov submit-proposal [flags]
  pussy tx gov submit-proposal [command]

Available Commands:
  cancel-software-upgrade   Cancel the current software upgrade proposal
  clear-contract-admin      Submit a clear admin for a contract to prevent further migrations proposal
  community-pool-spend      Submit a community pool spend proposal
  execute-contract          Submit a execute wasm contract proposal (run by any address)
  ibc-upgrade               Submit an IBC upgrade proposal
  instantiate-contract      Submit an instantiate wasm contract proposal
  migrate-contract          Submit a migrate wasm contract to a new code version proposal
  param-change              Submit a parameter change proposal
  pin-codes                 Submit a pin code proposal for pinning a code to cache
  set-contract-admin        Submit a new admin for a contract proposal
  software-upgrade          Submit a software upgrade proposal
  sudo-contract             Submit a sudo wasm contract proposal (to call privileged commands)
  unpin-codes               Submit a unpin code proposal for unpinning a code to cache
  update-client             Submit an update IBC client proposal
  update-instantiate-config Submit an update instantiate config proposal.
  wasm-store                Submit a wasm binary proposal

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --deposit string           The proposal deposit
      --description string       The proposal description
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for submit-proposal
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --proposal string          Proposal file path (if this path is given, other proposal flags are ignored)
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
      --title string             The proposal title
      --type string              The proposal Type
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx gov submit-proposal [command] --help" for more information about a command.

```

### pussy tx gov vote

```
Submit a vote for an active proposal. You can
find the proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy tx gov vote 1 yes --from mykey

Usage:
  pussy tx gov vote [proposal-id] [option] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for vote
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov weighted-vote

```
Submit a vote for an active proposal. You can
find the proposal-id by running "spacepussy query gov proposals".

Example:
$ spacepussy tx gov weighted-vote 1 yes=0.6,no=0.3,abstain=0.05,no_with_veto=0.05 --from mykey

Usage:
  pussy tx gov weighted-vote [proposal-id] [weighted-options] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for weighted-vote
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx gov

```
Governance transactions subcommands

Usage:
  pussy tx gov [flags]
  pussy tx gov [command]

Available Commands:
  deposit         Deposit tokens for an active proposal
  submit-proposal Submit a proposal along with an initial deposit
  vote            Vote for an active proposal, options: yes/no/no_with_veto/abstain
  weighted-vote   Vote for an active proposal, options: yes/no/no_with_veto/abstain

Flags:
  -h, --help   help for gov

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx gov [command] --help" for more information about a command.

```

### pussy tx graph cyberlink

```
Create cyberlink.
Example:
$ spacepussy tx link cyberlink QmWZYRj344JSLShtBnrMS4vw5DQ2zsGqrytYKMqcQgEneB QmfZwbahFLTcB3MTMT8TA8si5khhRmzm7zbHToo4WVK3zn

Usage:
  pussy tx graph cyberlink [cid-from] [cid-to] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for cyberlink
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx graph

```
Graph transaction subcommands

Usage:
  pussy tx graph [flags]
  pussy tx graph [command]

Available Commands:
  cyberlink   Create cyberlink

Flags:
  -h, --help   help for graph

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx graph [command] --help" for more information about a command.

```

### pussy tx grid create-route

```
Create grid route from your address to destination address with provided name

Usage:
  pussy tx grid create-route [destination] [name] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for create-route
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx grid delete-route

```
Delete your grid route to given destination address

Usage:
  pussy tx grid delete-route [destination] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for delete-route
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx grid edit-route-name

```
Edit name of grid route to given destination address

Usage:
  pussy tx grid edit-route-name [destination] [name] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for edit-route-name
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx grid edit-route

```
Set value of grid route to destination address

Usage:
  pussy tx grid edit-route [destination] [value] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for edit-route
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx grid

```
grid transactions subcommands

Usage:
  pussy tx grid [flags]
  pussy tx grid [command]

Available Commands:
  create-route    Create grid route from your address to destination address with provided name
  delete-route    Delete your grid route to given destination address
  edit-route      Set value of grid route to destination address
  edit-route-name Edit name of grid route to given destination address

Flags:
  -h, --help   help for grid

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx grid [command] --help" for more information about a command.

```

### pussy tx ibc channel

```
IBC channel transaction subcommands

Usage:
  pussy tx ibc channel [flags]

Flags:
  -h, --help   help for channel

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc client create

```
create a new IBC client with the specified client state and consensus state
	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}
	- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}

Usage:
  pussy tx ibc client create [path/to/client_state.json] [path/to/consensus_state.json] [flags]

Examples:
spacepussy tx ibc client create [path/to/client_state.json] [path/to/consensus_state.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for create
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc client misbehaviour

```
submit a client misbehaviour to prevent future updates

Usage:
  pussy tx ibc client misbehaviour [path/to/misbehaviour.json] [flags]

Examples:
spacepussy tx ibc client misbehaviour [path/to/misbehaviour.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for misbehaviour

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc client update

```
update existing client with a header

Usage:
  pussy tx ibc client update [client-id] [path/to/header.json] [flags]

Examples:
spacepussy tx ibc client update [client-id] [path/to/header.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for update

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc client upgrade

```
upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states
	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}
	- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}

Usage:
  pussy tx ibc client upgrade [client-identifier] [path/to/client_state.json] [path/to/consensus_state.json] [upgrade-client-proof] [upgrade-consensus-state-proof] [flags]

Examples:
spacepussy tx ibc client upgrade [client-identifier] [path/to/client_state.json] [path/to/consensus_state.json] [client-state-proof] [consensus-state-proof] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for upgrade
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc client

```
IBC client transaction subcommands

Usage:
  pussy tx ibc client [flags]
  pussy tx ibc client [command]

Available Commands:
  create       create new IBC client
  misbehaviour submit a client misbehaviour
  update       update existing client with a header
  upgrade      upgrade an IBC client

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx ibc client [command] --help" for more information about a command.

```

### pussy tx ibc-transfer transfer

```
Transfer a fungible token through IBC. Timeouts can be specified
as absolute or relative using the "absolute-timeouts" flag. Timeout height can be set by passing in the height string
in the form {revision}-{height} using the "packet-timeout-height" flag. Relative timeout height is added to the block
height queried from the latest consensus state corresponding to the counterparty channel. Relative timeout timestamp 
is added to the greater value of the local clock time and the block timestamp queried from the latest consensus state 
corresponding to the counterparty channel. Any timeout set to 0 is disabled.

Usage:
  pussy tx ibc-transfer transfer [src-port] [src-channel] [receiver] [amount] [flags]

Examples:
spacepussy tx ibc-transfer transfer [src-port] [src-channel] [receiver] [amount]

Flags:
      --absolute-timeouts               Timeout flags are used as absolute timeouts.
  -a, --account-number uint             The account number of the signing account (offline mode only)
  -b, --broadcast-mode string           Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                         ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string              Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                     Fees to pay along with transaction; eg: 10uatom
      --from string                     Name or address of private key with which to sign
      --gas string                      gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float            adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string               Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                   Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                            help for transfer
      --keyring-backend string          Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string              The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                          Use a connected Ledger device
      --node string                     <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                     Note to add a description to the transaction (previously --memo)
      --offline                         Offline mode (does not allow any online functionality
  -o, --output string                   Output format (text|json) (default "json")
      --packet-timeout-height string    Packet timeout block height. The timeout is disabled when set to 0-0. (default "0-1000")
      --packet-timeout-timestamp uint   Packet timeout timestamp in nanoseconds from now. Default is 10 minutes. The timeout is disabled when set to 0. (default 600000000000)
  -s, --sequence uint                   The sequence number of the signing account (offline mode only)
      --sign-mode string                Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint             Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                             Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx ibc-transfer

```
IBC fungible token transfer transaction subcommands

Usage:
  pussy tx ibc-transfer [flags]
  pussy tx ibc-transfer [command]

Available Commands:
  transfer    Transfer a fungible token through IBC

Flags:
  -h, --help   help for ibc-transfer

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx ibc-transfer [command] --help" for more information about a command.

```

### pussy tx ibc

```
IBC transaction subcommands

Usage:
  pussy tx ibc [flags]
  pussy tx ibc [command]

Available Commands:
  channel     IBC channel transaction subcommands
  client      IBC client transaction subcommands

Flags:
  -h, --help   help for ibc

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx ibc [command] --help" for more information about a command.

```

### pussy tx liquidity create-pool

```
Create liquidity pool and deposit coins.

Example:
$ spacepussy tx liquidity create-pool 1 1000000000uatom,50000000000uusd --from mykey

This example creates a liquidity pool of pool-type 1 (two coins) and deposits 1000000000uatom and 50000000000uusd.
New liquidity pools can be created only for coin combinations that do not already exist in the network.

[pool-type]: The id of the liquidity pool-type. The only supported pool type is 1
[deposit-coins]: The amount of coins to deposit to the liquidity pool. The number of deposit coins must be 2 in pool type 1.

Usage:
  pussy tx liquidity create-pool [pool-type] [deposit-coins] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for create-pool
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx liquidity deposit

```
Deposit coins a liquidity pool.

This deposit request is not processed immediately since it is accumulated in the liquidity pool batch.
All requests in a batch are treated equally and executed at the same swap price.

Example:
$ spacepussy tx liquidity deposit 1 100000000uatom,5000000000uusd --from mykey

This example request deposits 100000000uatom and 5000000000uusd to pool-id 1.
Deposits must be the same coin denoms as the reserve coins.

[pool-id]: The pool id of the liquidity pool
[deposit-coins]: The amount of coins to deposit to the liquidity pool

Usage:
  pussy tx liquidity deposit [pool-id] [deposit-coins] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for deposit
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx liquidity swap

```
Swap offer coin with demand coin from the liquidity pool with the given order price.

This swap request is not processed immediately since it is accumulated in the liquidity pool batch.
All requests in a batch are treated equally and executed at the same swap price.
The order of swap requests is ignored since the universal swap price is calculated in every batch to prevent front running.

The requested swap is executed with a swap price that is calculated from the given swap price function of the pool, the other swap requests, and the liquidity pool coin reserve status.
Swap orders are executed only when the execution swap price is equal to or greater than the submitted order price of the swap order.

Example:
$ spacepussy tx liquidity swap 1 1 50000000uusd uatom 0.019 0.003 --from mykey

For this example, imagine that an existing liquidity pool has with 1000000000uatom and 50000000000uusd.
This example request swaps 50000000uusd for at least 950000uatom with the order price of 0.019 and swap fee rate of 0.003.
A sufficient balance of half of the swap-fee-rate of the offer coin is required to reserve the offer coin fee.

The order price is the exchange ratio of X/Y, where X is the amount of the first coin and Y is the amount of the second coin when their denoms are sorted alphabetically.
Increasing order price reduces the possibility for your request to be processed and results in buying uatom at a lower price than the pool price.

For explicit calculations, The swap fee rate must be the value that set as liquidity parameter in the current network.
The only supported swap-type is 1. For the detailed swap algorithm, see https://github.com/tendermint/liquidity

[pool-id]: The pool id of the liquidity pool 
[swap-type]: The swap type of the swap message. The only supported swap type is 1 (instant swap).
[offer-coin]: The amount of offer coin to swap 
[demand-coin-denom]: The denomination of the coin to exchange with offer coin 
[order-price]: The limit order price for the swap order. The price is the exchange ratio of X/Y where X is the amount of the first coin and Y is the amount of the second coin when their denoms are sorted alphabetically 
[swap-fee-rate]: The swap fee rate to pay for swap that is proportional to swap amount. The swap fee rate must be the value that set as liquidity parameter in the current network.

Usage:
  pussy tx liquidity swap [pool-id] [swap-type] [offer-coin] [demand-coin-denom] [order-price] [swap-fee-rate] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for swap
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx liquidity withdraw

```
Withdraw pool coin from the specified liquidity pool.

This swap request is not processed immediately since it is accumulated in the liquidity pool batch.
All requests in a batch are treated equally and executed at the same swap price.

Example:
$ spacepussy tx liquidity withdraw 1 10000pool96EF6EA6E5AC828ED87E8D07E7AE2A8180570ADD212117B2DA6F0B75D17A6295 --from mykey

This example request withdraws 10000 pool coin from the specified liquidity pool.
The appropriate pool coin must be requested from the specified pool.

[pool-id]: The pool id of the liquidity pool
[pool-coin]: The amount of pool coin to withdraw from the liquidity pool

Usage:
  pussy tx liquidity withdraw [pool-id] [pool-coin] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for withdraw
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx liquidity

```
Liquidity transaction subcommands

Usage:
  pussy tx liquidity [flags]
  pussy tx liquidity [command]

Available Commands:
  create-pool Create liquidity pool and deposit coins
  deposit     Deposit coins to a liquidity pool
  swap        Swap offer coin with demand coin from the liquidity pool with the given order price
  withdraw    Withdraw pool coin from the specified liquidity pool

Flags:
  -h, --help   help for liquidity

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx liquidity [command] --help" for more information about a command.

```

### pussy tx multisign-batch

```
Assemble a batch of multisig transactions generated by batch sign command.

Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the
multisig key [name], and attach the key name to the transaction read from [file].

Example:
$ spacepussy tx multisign-batch transactions.json multisigk1k2k3 k1sigs.json k2sigs.json k3sig.json

The current multisig implementation defaults to amino-json sign mode.
The SIGN_MODE_DIRECT sign mode is not supported.'

Usage:
  pussy tx multisign-batch [file] [name] [[signature-file]...] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for multisign-batch
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --multisig string          Address of the multisig account that the transaction signs on behalf of
      --no-auto-increment        disable sequence auto increment
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --output-document string   The document is written to the given file instead of STDOUT
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx multisign

```
Sign transactions created with the --generate-only flag that require multisig signatures.

Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the
multisig key [name], and attach the key name to the transaction read from [file].

Example:
$ spacepussy tx multisign transaction.json k1k2k3 k1sig.json k2sig.json k3sig.json

If --signature-only flag is on, output a JSON representation
of only the generated signature.

If the --offline flag is on, the client will not reach out to an external node.
Account number or sequence number lookups are not performed so you must
set these parameters manually.

The current multisig implementation defaults to amino-json sign mode.
The SIGN_MODE_DIRECT sign mode is not supported.'

Usage:
  pussy tx multisign [file] [name] [[signature]...] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amino                    Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for multisign
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --output-document string   The document is written to the given file instead of STDOUT
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --signature-only           Print only the generated signature, then exit
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx resources investmint

```
Long.

Example:
$  tx resources investmint 1000000000hydrogen millivolt 2500000 --from <key>

Usage:
  pussy tx resources investmint [amount] [resource] [length] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for investmint
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx resources

```
resources transactions subcommands

Usage:
  pussy tx resources [flags]
  pussy tx resources [command]

Available Commands:
  investmint  Investmint basic resource with the return of advanced system resource

Flags:
  -h, --help   help for resources

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx resources [command] --help" for more information about a command.

```

### pussy tx sign-batch

```
Sign batch files of transactions generated with --generate-only.
The command processes list of transactions from file (one StdTx each line), generate
signed transactions or signatures and print their JSON encoding, delimited by '\n'.
As the signatures are generated, the command updates the account sequence number accordingly.

If the --signature-only flag is set, it will output the signature parts only.

The --offline flag makes sure that the client will not reach out to full node.
As a result, the account and the sequence number queries will not be performed and
it is required to set such parameters manually. Note, invalid values will cause
the transaction to fail. The sequence will be incremented automatically for each
transaction that is signed.

The --multisig=<multisig_key> flag generates a signature on behalf of a multisig
account key. It implies --signature-only.

Usage:
  pussy tx sign-batch [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for sign-batch
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --multisig string          Address or key name of the multisig account on behalf of which the transaction shall be signed
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --output-document string   The document will be written to the given file instead of STDOUT
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --signature-only           Print only the generated signature, then exit (default true)
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx sign

```
Sign a transaction created with the --generate-only flag.
It will read a transaction from [file], sign it, and print its JSON encoding.

If the --signature-only flag is set, it will output the signature parts only.

The --offline flag makes sure that the client will not reach out to full node.
As a result, the account and sequence number queries will not be performed and
it is required to set such parameters manually. Note, invalid values will cause
the transaction to fail.

The --multisig=<multisig_key> flag generates a signature on behalf of a multisig account
key. It implies --signature-only. Full multisig signed transactions may eventually
be generated via the 'multisign' command.

Usage:
  pussy tx sign [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amino                    Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for sign
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --multisig string          Address or key name of the multisig account on behalf of which the transaction shall be signed
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
      --output-document string   The document will be written to the given file instead of STDOUT
      --overwrite                Overwrite existing signatures with a new one. If disabled, new signature will be appended
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --signature-only           Print only the signatures
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx slashing unjail

```
unjail a jailed validator:

$ <appd> tx slashing unjail --from mykey

Usage:
  pussy tx slashing unjail [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for unjail
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx slashing

```
Slashing transaction subcommands

Usage:
  pussy tx slashing [flags]
  pussy tx slashing [command]

Available Commands:
  unjail      unjail validator previously jailed for downtime

Flags:
  -h, --help   help for slashing

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx slashing [command] --help" for more information about a command.

```

### pussy tx staking create-validator

```
create new validator initialized with a self-delegation to it

Usage:
  pussy tx staking create-validator [flags]

Flags:
  -a, --account-number uint                 The account number of the signing account (offline mode only)
      --amount string                       Amount of coins to bond
  -b, --broadcast-mode string               Transaction broadcasting mode (sync|async|block) (default "sync")
      --commission-max-change-rate string   The maximum commission change rate percentage (per day)
      --commission-max-rate string          The maximum commission rate percentage
      --commission-rate string              The initial commission rate percentage
      --details string                      The validator's (optional) details
      --dry-run                             ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string                  Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                         Fees to pay along with transaction; eg: 10uatom
      --from string                         Name or address of private key with which to sign
      --gas string                          gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float                adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                   Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                       Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                                help for create-validator
      --identity string                     The optional identity signature (ex. UPort or Keybase)
      --ip string                           The node's public IP. It takes effect only when used in combination with --generate-only
      --keyring-backend string              Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                  The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                              Use a connected Ledger device
      --min-self-delegation string          The minimum self delegation required on the validator
      --moniker string                      The validator's name
      --node string                         <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --node-id string                      The node's ID
      --note string                         Note to add a description to the transaction (previously --memo)
      --offline                             Offline mode (does not allow any online functionality
  -o, --output string                       Output format (text|json) (default "json")
      --pubkey string                       The validator's Protobuf JSON encoded public key
      --security-contact string             The validator's (optional) security contact email
  -s, --sequence uint                       The sequence number of the signing account (offline mode only)
      --sign-mode string                    Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint                 Set a block timeout height to prevent the tx from being committed past a certain height
      --website string                      The validator's (optional) website
  -y, --yes                                 Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx staking delegate

```
Delegate an amount of liquid coins to a validator from your wallet.

Example:
$ spacepussy tx staking delegate pussyvaloper1l2rsakp388kuv9k8qzq6lrm9taddae7fpx59wm 1000stake --from mykey

Usage:
  pussy tx staking delegate [validator-addr] [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for delegate
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx staking edit-validator

```
edit an existing validator account

Usage:
  pussy tx staking edit-validator [flags]

Flags:
  -a, --account-number uint          The account number of the signing account (offline mode only)
  -b, --broadcast-mode string        Transaction broadcasting mode (sync|async|block) (default "sync")
      --commission-rate string       The new commission rate percentage
      --details string               The validator's (optional) details (default "[do-not-modify]")
      --dry-run                      ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string           Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                  Fees to pay along with transaction; eg: 10uatom
      --from string                  Name or address of private key with which to sign
      --gas string                   gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float         adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string            Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                         help for edit-validator
      --identity string              The (optional) identity signature (ex. UPort or Keybase) (default "[do-not-modify]")
      --keyring-backend string       Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string           The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                       Use a connected Ledger device
      --min-self-delegation string   The minimum self delegation required on the validator
      --moniker string               The validator's name (default "[do-not-modify]")
      --node string                  <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                  Note to add a description to the transaction (previously --memo)
      --offline                      Offline mode (does not allow any online functionality
  -o, --output string                Output format (text|json) (default "json")
      --security-contact string      The validator's (optional) security contact email (default "[do-not-modify]")
  -s, --sequence uint                The sequence number of the signing account (offline mode only)
      --sign-mode string             Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint          Set a block timeout height to prevent the tx from being committed past a certain height
      --website string               The validator's (optional) website (default "[do-not-modify]")
  -y, --yes                          Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx staking redelegate

```
Redelegate an amount of illiquid staking tokens from one validator to another.

Example:
$ spacepussy tx staking redelegate pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj pussyvaloper1l2rsakp388kuv9k8qzq6lrm9taddae7fpx59wm 100stake --from mykey

Usage:
  pussy tx staking redelegate [src-validator-addr] [dst-validator-addr] [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for redelegate
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx staking unbond

```
Unbond an amount of bonded shares from a validator.

Example:
$ spacepussy tx staking unbond pussyvaloper1gghjut3ccd8ay0zduzj64hwre2fxs9ldmqhffj 100stake --from mykey

Usage:
  pussy tx staking unbond [validator-addr] [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for unbond
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx staking

```
Staking transaction subcommands

Usage:
  pussy tx staking [flags]
  pussy tx staking [command]

Available Commands:
  create-validator create new validator initialized with a self-delegation to it
  delegate         Delegate liquid tokens to a validator
  edit-validator   edit an existing validator account
  redelegate       Redelegate illiquid tokens from one validator to another
  unbond           Unbond shares from a validator

Flags:
  -h, --help   help for staking

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx staking [command] --help" for more information about a command.

```

### pussy tx validate-signatures

```
Print the addresses that must sign the transaction, those who have already
signed it, and make sure that signatures are in the correct order.

The command would check whether all required signers have signed the transactions, whether
the signatures were collected in the right order, and if the signature is valid over the
given transaction. If the --offline flag is also set, signature validation over the
transaction will be not be performed as that will require RPC communication with a full node.

Usage:
  pussy tx validate-signatures [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for validate-signatures
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx vesting create-vesting-account

```
Create a new vesting account funded with an allocation of tokens. The
account can either be a delayed or continuous vesting account, which is determined
by the '--delayed' flag. All vesting accouts created will have their start time
set by the committed block's time. The end_time must be provided as a UNIX epoch
timestamp.

Usage:
  pussy tx vesting create-vesting-account [to_address] [amount] [end_time] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --delayed                  Create a delayed vesting account if true
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for create-vesting-account
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx vesting

```
Vesting transaction subcommands

Usage:
  pussy tx vesting [flags]
  pussy tx vesting [command]

Available Commands:
  create-vesting-account Create a new vesting account funded with an allocation of tokens.

Flags:
  -h, --help   help for vesting

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx vesting [command] --help" for more information about a command.

```

### pussy tx wasm clear-contract-admin

```
Clears admin for a contract to prevent further migrations

Usage:
  pussy tx wasm clear-contract-admin [contract_addr_bech32] [flags]

Aliases:
  clear-contract-admin, clear-admin, clr-adm

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for clear-contract-admin
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm execute

```
Execute a command on a wasm contract

Usage:
  pussy tx wasm execute [contract_addr_bech32] [json_encoded_send_args] --amount [coins,optional] [flags]

Aliases:
  execute, run, call, exec, ex, e

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amount string            Coins to send to the contract along with command
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for execute
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm instantiate

```
Instantiate a wasm contract

Usage:
  pussy tx wasm instantiate [code_id_int64] [json_encoded_init_args] --label [text] --admin [address,optional] --amount [coins,optional] [flags]

Aliases:
  instantiate, start, init, inst, i

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --admin string             Address of an admin
      --amount string            Coins to send to the contract during instantiation
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for instantiate
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --label string             A human-readable name for this contract in lists
      --ledger                   Use a connected Ledger device
      --no-admin                 You must set this explicitly if you don't want an admin
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm migrate

```
Migrate a wasm contract to a new code version

Usage:
  pussy tx wasm migrate [contract_addr_bech32] [new_code_id_int64] [json_encoded_migration_args] [flags]

Aliases:
  migrate, update, mig, m

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for migrate
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm set-contract-admin

```
Set new admin for a contract

Usage:
  pussy tx wasm set-contract-admin [contract_addr_bech32] [new_admin_addr_bech32] [flags]

Aliases:
  set-contract-admin, new-admin, admin, set-adm, sa

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for set-contract-admin
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --node string              <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string              Note to add a description to the transaction (previously --memo)
      --offline                  Offline mode (does not allow any online functionality
  -o, --output string            Output format (text|json) (default "json")
  -s, --sequence uint            The sequence number of the signing account (offline mode only)
      --sign-mode string         Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint      Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm store

```
Upload a wasm binary

Usage:
  pussy tx wasm store [wasm file] [flags]

Aliases:
  store, upload, st, s

Flags:
  -a, --account-number uint               The account number of the signing account (offline mode only)
  -b, --broadcast-mode string             Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                           ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
      --fee-account string                Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                       Fees to pay along with transaction; eg: 10uatom
      --from string                       Name or address of private key with which to sign
      --gas string                        gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float              adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                 Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                     Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                              help for store
      --instantiate-everybody string      Everybody can instantiate a contract from the code, optional
      --instantiate-nobody string         Nobody except the governance process can instantiate a contract from the code, optional
      --instantiate-only-address string   Only this address can instantiate a contract instance from the code, optional
      --keyring-backend string            Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                            Use a connected Ledger device
      --node string                       <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                       Note to add a description to the transaction (previously --memo)
      --offline                           Offline mode (does not allow any online functionality
  -o, --output string                     Output format (text|json) (default "json")
  -s, --sequence uint                     The sequence number of the signing account (offline mode only)
      --sign-mode string                  Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint               Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                               Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy tx wasm

```
Wasm transaction subcommands

Usage:
  pussy tx wasm [flags]
  pussy tx wasm [command]

Available Commands:
  clear-contract-admin Clears admin for a contract to prevent further migrations
  execute              Execute a command on a wasm contract
  instantiate          Instantiate a wasm contract
  migrate              Migrate a wasm contract to a new code version
  set-contract-admin   Set new admin for a contract
  store                Upload a wasm binary

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "pussy tx wasm [command] --help" for more information about a command.

```

### pussy tx

```
Transactions subcommands

Usage:
  pussy tx [flags]
  pussy tx [command]

Available Commands:
                      
  authz               Authorization transactions subcommands
  bank                Bank transaction subcommands
  broadcast           Broadcast transactions generated offline
  crisis              Crisis transactions subcommands
  decode              Decode a binary encoded transaction string
  distribution        Distribution transactions subcommands
  encode              Encode transactions generated offline
  evidence            Evidence transaction subcommands
  feegrant            Feegrant transactions subcommands
  gov                 Governance transactions subcommands
  graph               Graph transaction subcommands
  grid                grid transactions subcommands
  ibc                 IBC transaction subcommands
  ibc-transfer        IBC fungible token transfer transaction subcommands
  liquidity           Liquidity transaction subcommands
  multisign           Generate multisig signatures for transactions generated offline
  multisign-batch     Assemble multisig transactions in batch from batch signatures
  resources           resources transactions subcommands
  sign                Sign a transaction generated offline
  sign-batch          Sign transaction batch files
  slashing            Slashing transaction subcommands
  staking             Staking transaction subcommands
  validate-signatures validate transactions signatures
  vesting             Vesting transaction subcommands
  wasm                Wasm transaction subcommands

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for tx

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Additional help topics:
  pussy tx upgrade       Upgrade transaction subcommands

Use "pussy tx [command] --help" for more information about a command.

```

### pussy validate-genesis

```
validates the genesis file at the default location or at the location passed as an arg

Usage:
  pussy validate-genesis [file] [flags]

Flags:
  -h, --help   help for validate-genesis

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### pussy version

```
Print the application binary version information

Usage:
  pussy version [flags]

Flags:
  -h, --help            help for version
      --long            Print long version information
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --home string         directory for config and data (default "/Users/user//.pussy")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

