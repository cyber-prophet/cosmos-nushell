### neutrond 

```
IntechainAdapteerd (daemon)

Usage:
  neutrond [command]

Available Commands:
  add-consumer-section ONLY FOR TESTING PURPOSES! Modifies genesis so that chain can be started locally with one node.
  add-genesis-account  Add a genesis account to genesis.json
  add-wasm-message     Wasm genesis subcommands
  collect-gentxs       Collect genesis txs and output a genesis.json file
  config               Create or query an application CLI configuration file
  debug                Tool for helping with debugging your application
  export               Export state to JSON
  gentx                Generate a genesis tx carrying a self delegation
  help                 Help about any command
  init                 Initialize private validator, p2p, genesis, and application configuration files
  keys                 Manage your application's keys
  query                Querying subcommands
  rollback             rollback cosmos-sdk and tendermint state by one height
  start                Run the full node
  status               Query remote node for status
  tendermint           Tendermint subcommands
  tx                   Transactions subcommands
  validate-genesis     validates the genesis file at the default location or at the location passed as an arg
  version              Print the application binary version information

Flags:
  -h, --help                help for neutrond
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond [command] --help" for more information about a command.

```

### neutrond add-consumer-section

```
ONLY FOR TESTING PURPOSES! Modifies genesis so that chain can be started locally with one node.

Usage:
  neutrond add-consumer-section [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for add-consumer-section
      --home string     The application home directory (default "/Users/user/.neutrond")
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-genesis-account

```
Add a genesis account to genesis.json. The provided account must specify
the account address or key name and a list of initial coins. If a key name is given,
the address will be looked up in the local Keybase. The list of initial tokens must
contain valid denominations. Accounts may optionally be supplied with vesting parameters.

Usage:
  neutrond add-genesis-account [address_or_key_name] [coin][,[coin]] [flags]

Flags:
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for add-genesis-account
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --vesting-amount string    amount of coins for vesting accounts
      --vesting-end-time int     schedule end time (unix epoch) for vesting accounts
      --vesting-start-time int   schedule start time (unix epoch) for vesting accounts

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message execute

```
Execute a command on a wasm contract

Usage:
  neutrond add-wasm-message execute [contract_addr_bech32] [json_encoded_send_args] --run-as [address] --amount [coins,optional] [flags]

Flags:
      --amount string            Coins to send to the contract along with command
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for execute
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --run-as string            The address that pays the funds.

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message instantiate-contract

```
Instantiate a wasm contract

Usage:
  neutrond add-wasm-message instantiate-contract [code_id_int64] [json_encoded_init_args] --label [text] --run-as [address] --admin [address,optional] --amount [coins,optional] [flags]

Flags:
      --admin string             Address or key name of an admin
      --amount string            Coins to send to the contract during instantiation
      --height int               Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                     help for instantiate-contract
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --label string             A human-readable name for this contract in lists
      --no-admin                 You must set this explicitly if you don't want an admin
      --node string              <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string            Output format (text|json) (default "text")
      --run-as string            The address that pays the init funds. It is the creator of the contract.

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message list-codes

```
Lists all codes from genesis code dump and queued messages

Usage:
  neutrond add-wasm-message list-codes  [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for list-codes
      --home string     The application home directory (default "/Users/user/.neutrond")
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message list-contracts

```
Lists all contracts from genesis contract dump and queued messages

Usage:
  neutrond add-wasm-message list-contracts  [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for list-contracts
      --home string     The application home directory (default "/Users/user/.neutrond")
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message store

```
Upload a wasm binary

Usage:
  neutrond add-wasm-message store [wasm file] --run-as [owner_address_or_key_name]", [flags]

Flags:
      --height int                            Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                                  help for store
      --home string                           The application home directory (default "/Users/user/.neutrond")
      --instantiate-anyof-addresses strings   Any of the addresses can instantiate a contract from the code, optional
      --instantiate-everybody string          Everybody can instantiate a contract from the code, optional
      --instantiate-nobody string             Nobody except the governance process can instantiate a contract from the code, optional
      --instantiate-only-address string       Only this address can instantiate a contract instance from the code, optional
      --keyring-backend string                Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --node string                           <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string                         Output format (text|json) (default "text")
      --run-as string                         The address that is stored as code creator

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond add-wasm-message

```
Wasm genesis subcommands

Usage:
  neutrond add-wasm-message [flags]
  neutrond add-wasm-message [command]

Available Commands:
  execute              Execute a command on a wasm contract
  instantiate-contract Instantiate a wasm contract
  list-codes           Lists all codes from genesis code dump and queued messages
  list-contracts       Lists all contracts from genesis contract dump and queued messages
  store                Upload a wasm binary

Flags:
  -h, --help   help for add-wasm-message

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond add-wasm-message [command] --help" for more information about a command.

```

### neutrond collect-gentxs

```
Collect genesis txs and output a genesis.json file

Usage:
  neutrond collect-gentxs [flags]

Flags:
      --gentx-dir string   override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
  -h, --help               help for collect-gentxs
      --home string        The application home directory (default "/Users/user/.neutrond")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond config

```
Create or query an application CLI configuration file

Usage:
  neutrond config <key> [value] [flags]

Flags:
  -h, --help   help for config

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond debug addr

```
Convert an address between hex encoding and bech32.

Example:
$ neutrond debug addr cosmos1e0jnq2sun3dzjh8p2xq95kk0expwmd7shwjpfg

Usage:
  neutrond debug addr [address] [flags]

Flags:
  -h, --help   help for addr

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond debug generate-contract-address

```
Generates contract address for the given instance id and code id

Usage:
  neutrond debug generate-contract-address [instance_id] [code_id] [flags]

Flags:
  -h, --help   help for generate-contract-address

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond debug pubkey

```
Decode a pubkey from proto JSON and display it's address.

Example:
$ neutrond debug pubkey '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AurroA7jvfPd1AadmmOvWM2rJSwipXfRf8yD6pLbA2DJ"}'

Usage:
  neutrond debug pubkey [pubkey] [flags]

Flags:
  -h, --help   help for pubkey

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond debug raw-bytes

```
Convert raw-bytes to hex.

Example:
$ neutrond debug raw-bytes [72 101 108 108 111 44 32 112 108 97 121 103 114 111 117 110 100]

Usage:
  neutrond debug raw-bytes [raw-bytes] [flags]

Flags:
  -h, --help   help for raw-bytes

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond debug

```
Tool for helping with debugging your application

Usage:
  neutrond debug [flags]
  neutrond debug [command]

Available Commands:
  addr                      Convert an address between hex and bech32
  generate-contract-address Generates contract address for the given instance id and code id
  pubkey                    Decode a pubkey from proto JSON
  raw-bytes                 Convert raw bytes output (eg. [10 21 13 255]) to hex

Flags:
  -h, --help   help for debug

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond debug [command] --help" for more information about a command.

```

### neutrond export

```
Export state to JSON

Usage:
  neutrond export [flags]

Flags:
      --for-zero-height              Export state to start at height zero (perform preproccessing)
      --height int                   Export state from a particular height (-1 means latest height) (default -1)
  -h, --help                         help for export
      --home string                  The application home directory (default "/Users/user/.neutrond")
      --jail-allowed-addrs strings   Comma-separated list of operator addresses of jailed validators to unjail

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond gentx

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
$ neutrond gentx my-key-name 1000000stake --home=/path/to/home/dir --keyring-backend=os --chain-id=test-chain-1 \
    --moniker="myvalidator" \
    --commission-max-change-rate=0.01 \
    --commission-max-rate=1.0 \
    --commission-rate=0.07 \
    --details="..." \
    --security-contact="..." \
    --website="..."

Usage:
  neutrond gentx [key_name] [amount] [flags]

Flags:
  -a, --account-number uint                 The account number of the signing account (offline mode only)
      --amount string                       Amount of coins to bond
  -b, --broadcast-mode string               Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string                     The network chain ID
      --commission-max-change-rate string   The maximum commission change rate percentage (per day)
      --commission-max-rate string          The maximum commission rate percentage
      --commission-rate string              The initial commission rate percentage
      --details string                      The validator's (optional) details
      --dry-run                             ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string                  Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                         Fees to pay along with transaction; eg: 10uatom
      --from string                         Name or address of private key with which to sign
      --gas string                          gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float                adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                   Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                       Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                                help for gentx
      --home string                         The application home directory (default "/Users/user/.neutrond")
      --identity string                     The (optional) identity signature (ex. UPort or Keybase)
      --ip string                           The node's public IP (default "192.168.1.8")
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
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond help

```
Help provides help for any command in the application.
Simply type neutrond help [path to command] for full details.

Usage:
  neutrond help [command] [flags]

Flags:
  -h, --help   help for help

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond init

```
Initialize validators's and node's configuration files.

Usage:
  neutrond init [moniker] [flags]

Flags:
      --chain-id string   genesis file chain-id, if left blank will be randomly created
  -h, --help              help for init
      --home string       node's home directory (default "/Users/user/.neutrond")
  -o, --overwrite         overwrite the genesis.json file
      --recover           provide seed phrase to recover existing key instead of creating

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond keys add

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
  neutrond keys add <name> [flags]

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
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys delete

```
Delete keys from the Keybase backend.

Note that removing offline or ledger keys will remove
only the public key references stored locally, i.e.
private keys stored in a ledger device cannot be deleted with the CLI.

Usage:
  neutrond keys delete <name>... [flags]

Flags:
  -f, --force   Remove the key unconditionally without asking for the passphrase. Deprecated.
  -h, --help    help for delete
  -y, --yes     Skip confirmation prompt when deleting offline or ledger key references

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys export

```
Export a private key from the local keyring in ASCII-armored encrypted format.

When both the --unarmored-hex and --unsafe flags are selected, cryptographic
private key material is exported in an INSECURE fashion that is designed to
allow users to import their keys in hot wallets. This feature is for advanced
users only that are confident about how to handle private keys work and are
FULLY AWARE OF THE RISKS. If you are unsure, you may want to do some research
and export your keys in ASCII-armored encrypted format.

Usage:
  neutrond keys export <name> [flags]

Flags:
  -h, --help            help for export
      --unarmored-hex   Export unarmored hex privkey. Requires --unsafe.
      --unsafe          Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys import

```
Import a ASCII armored private key into the local keybase.

Usage:
  neutrond keys import <name> <keyfile> [flags]

Flags:
  -h, --help   help for import

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys list

```
Return a list of all public keys stored by this key manager
along with their associated name and address.

Usage:
  neutrond keys list [flags]

Flags:
  -h, --help         help for list
  -n, --list-names   List names only

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys migrate

```
Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring.
The legacy Keybase used to persist keys in a LevelDB database stored in a 'keys' sub-directory of
the old client application's home directory, e.g. $HOME/.gaiacli/keys/.
For each key material entry, the command will prompt if the key should be skipped or not. If the key
is not to be skipped, the passphrase must be entered. The key will only be migrated if the passphrase
is correct. Otherwise, the command will exit and migration must be repeated.

It is recommended to run in 'dry-run' mode first to verify all key migration material.

Usage:
  neutrond keys migrate <old_home_dir> [flags]

Flags:
      --dry-run   Run migration without actually persisting any changes to the new Keybase
  -h, --help      help for migrate

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys mnemonic

```
Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy

Usage:
  neutrond keys mnemonic [flags]

Flags:
  -h, --help             help for mnemonic
      --unsafe-entropy   Prompt the user to supply their own entropy, instead of relying on the system

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys parse

```
Convert and print to stdout key addresses and fingerprints from
hexadecimal into bech32 cosmos prefixed format and vice versa.

Usage:
  neutrond keys parse <hex-or-bech32-address> [flags]

Flags:
  -h, --help   help for parse

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys show

```
Display keys details. If multiple names or addresses are provided,
then an ephemeral multisig key will be created under the name "multi"
consisting of all the keys provided by name and multisig threshold.

Usage:
  neutrond keys show [name_or_address [name_or_address...]] [flags]

Flags:
  -a, --address                  Output the address only (overrides --output)
      --bech string              The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
  -d, --device                   Output the address in a ledger device
  -h, --help                     help for show
      --multisig-threshold int   K out of N required signatures (default 1)
  -p, --pubkey                   Output the public key only (overrides --output)

Global Flags:
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --log_format string        The logging format (json|plain) (default "plain")
      --log_level string         The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --output string            Output format (text|json) (default "text")
      --trace                    print out full stack trace on errors

```

### neutrond keys

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
  neutrond keys [command]

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
      --home string              The application home directory (default "/Users/user/.neutrond")
      --keyring-backend string   Select keyring's backend (os|file|test) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --output string            Output format (text|json) (default "text")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond keys [command] --help" for more information about a command.

```

### neutrond query account

```
Query for account by address

Usage:
  neutrond query account [address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query adminmodule admins

```
Query admins

Usage:
  neutrond query adminmodule admins [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for admins
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query adminmodule archivedproposals

```
Query archived proposals

Usage:
  neutrond query adminmodule archivedproposals [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for archivedproposals
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query adminmodule

```
Querying commands for the adminmodule module

Usage:
  neutrond query adminmodule [flags]
  neutrond query adminmodule [command]

Available Commands:
  admins            Query admins
  archivedproposals Query archived proposals

Flags:
  -h, --help   help for adminmodule

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query adminmodule [command] --help" for more information about a command.

```

### neutrond query auth account

```
Query for account by address

Usage:
  neutrond query auth account [address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query auth accounts

```
Query all the accounts

Usage:
  neutrond query auth accounts [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query auth module-account

```
Query module account info by module name

Usage:
  neutrond query auth module-account [module-name] [flags]

Examples:
neutrond q auth module-account auth

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for module-account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query auth params

```
Query the current auth parameters:

$ <appd> query auth params

Usage:
  neutrond query auth params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query auth

```
Querying commands for the auth module

Usage:
  neutrond query auth [flags]
  neutrond query auth [command]

Available Commands:
  account        Query for account by address
  accounts       Query all the accounts
  module-account Query module account info by module name
  params         Query the current auth parameters

Flags:
  -h, --help   help for auth

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query auth [command] --help" for more information about a command.

```

### neutrond query authz grants-by-grantee

```
Query authorization grants granted to a grantee.
Examples:
$ neutrond q authz grants-by-grantee cosmos1skj..

Usage:
  neutrond query authz grants-by-grantee [grantee-addr] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query authz grants-by-granter

```
Query authorization grants granted by granter.
Examples:
$ neutrond q authz grants-by-granter cosmos1skj..

Usage:
  neutrond query authz grants-by-granter [granter-addr] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query authz grants

```
Query authorization grants for a granter-grantee pair. If msg-type-url
is set, it will select grants only for that msg type.
Examples:
$ neutrond query authz grants cosmos1skj.. cosmos1skjwj..
$ neutrond query authz grants cosmos1skjw.. cosmos1skjwj.. /cosmos.bank.v1beta1.MsgSend

Usage:
  neutrond query authz grants [granter-addr] [grantee-addr] [msg-type-url]? [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query authz

```
Querying commands for the authz module

Usage:
  neutrond query authz [flags]
  neutrond query authz [command]

Available Commands:
  grants            query grants for a granter-grantee pair and optionally a msg-type-url
  grants-by-grantee query authorization grants granted to a grantee
  grants-by-granter query authorization grants granted by granter

Flags:
  -h, --help   help for authz

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query authz [command] --help" for more information about a command.

```

### neutrond query bank balances

```
Query the total balance of an account or of a specific denomination.

Example:
  $ neutrond query bank balances [address]
  $ neutrond query bank balances [address] --denom=[denom]

Usage:
  neutrond query bank balances [address] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query bank denom-metadata

```
Query the client metadata for all the registered coin denominations

Example:
  To query for the client metadata of all coin denominations use:
  $ neutrond query bank denom-metadata

To query for the client metadata of a specific coin denomination use:
  $ neutrond query bank denom-metadata --denom=[denom]

Usage:
  neutrond query bank denom-metadata [flags]

Flags:
      --denom string    The specific denomination to query client metadata for
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-metadata
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query bank total

```
Query total supply of coins that are held by accounts in the chain.

Example:
  $ neutrond query bank total

To query for the total supply of a specific coin denomination use:
  $ neutrond query bank total --denom=[denom]

Usage:
  neutrond query bank total [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query bank

```
Querying commands for the bank module

Usage:
  neutrond query bank [flags]
  neutrond query bank [command]

Available Commands:
  balances       Query for account balances by address
  denom-metadata Query the client metadata for coin denominations
  total          Query the total supply of coins of the chain

Flags:
  -h, --help   help for bank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query bank [command] --help" for more information about a command.

```

### neutrond query block

```
Get verified data for a the block at given height

Usage:
  neutrond query block [height] [flags]

Flags:
  -h, --help          help for block
  -n, --node string   Node to connect to (default "tcp://localhost:26657")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ccvconsumer next-fee-distribution

```
Query next fee distribution data

Usage:
  neutrond query ccvconsumer next-fee-distribution [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for next-fee-distribution
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ccvconsumer

```
Querying commands for the ccv consumer module

Usage:
  neutrond query ccvconsumer [flags]
  neutrond query ccvconsumer [command]

Available Commands:
  next-fee-distribution Query next fee distribution data

Flags:
  -h, --help   help for ccvconsumer

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ccvconsumer [command] --help" for more information about a command.

```

### neutrond query contractmanager failures

```
shows all failures or failures from specific contract address

Usage:
  neutrond query contractmanager failures [address] [flags]

Flags:
      --count-total       count total number of records in failures [address] to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for failures
      --limit uint        pagination limit of failures [address] to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of failures [address] to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of failures [address] to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of failures [address] to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query contractmanager params

```
shows the parameters of the module

Usage:
  neutrond query contractmanager params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query contractmanager

```
Querying commands for the contractmanager module

Usage:
  neutrond query contractmanager [flags]
  neutrond query contractmanager [command]

Available Commands:
  failures    shows all failures or failures from specific contract address
  params      shows the parameters of the module

Flags:
  -h, --help   help for contractmanager

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query contractmanager [command] --help" for more information about a command.

```

### neutrond query cron list-schedule

```
list all schedule

Usage:
  neutrond query cron list-schedule [flags]

Flags:
      --count-total       count total number of records in list-schedule to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for list-schedule
      --limit uint        pagination limit of list-schedule to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list-schedule to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list-schedule to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list-schedule to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query cron params

```
shows the parameters of the module

Usage:
  neutrond query cron params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query cron show-schedule

```
shows a schedule

Usage:
  neutrond query cron show-schedule [name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for show-schedule
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query cron

```
Querying commands for the cron module

Usage:
  neutrond query cron [flags]
  neutrond query cron [command]

Available Commands:
  list-schedule list all schedule
  params        shows the parameters of the module
  show-schedule shows a schedule

Flags:
  -h, --help   help for cron

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query cron [command] --help" for more information about a command.

```

### neutrond query evidence

```
Error: invalid evidence hash: encoding/hex: invalid byte: U+002D '-'
Usage:
  neutrond query evidence [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors


```

### neutrond query feeburner params

```
shows the parameters of the module

Usage:
  neutrond query feeburner params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feeburner total-burned-neutrons-amount

```
shows total amount of burned neutrons

Usage:
  neutrond query feeburner total-burned-neutrons-amount [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for total-burned-neutrons-amount
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feeburner

```
Querying commands for the feeburner module

Usage:
  neutrond query feeburner [flags]
  neutrond query feeburner [command]

Available Commands:
  params                       shows the parameters of the module
  total-burned-neutrons-amount shows total amount of burned neutrons

Flags:
  -h, --help   help for feeburner

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query feeburner [command] --help" for more information about a command.

```

### neutrond query feegrant grant

```
Query details for a grant. 
You can find the fee-grant of a granter and grantee.

Example:
$ neutrond query feegrant grant [granter] [grantee]

Usage:
  neutrond query feegrant grant [granter] [grantee] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for grant
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feegrant grants-by-grantee

```
Queries all the grants for a grantee address.

Example:
$ neutrond query feegrant grants-by-grantee [grantee]

Usage:
  neutrond query feegrant grants-by-grantee [grantee] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feegrant grants-by-granter

```
Queries all the grants issued for a granter address.

Example:
$ neutrond query feegrant grants-by-granter [granter]

Usage:
  neutrond query feegrant grants-by-granter [granter] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feegrant

```
Querying commands for the feegrant module

Usage:
  neutrond query feegrant [flags]
  neutrond query feegrant [command]

Available Commands:
  grant             Query details of a single grant
  grants-by-grantee Query all grants of a grantee
  grants-by-granter Query all grants by a granter

Flags:
  -h, --help   help for feegrant

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query feegrant [command] --help" for more information about a command.

```

### neutrond query feerefunder fee-info

```
queries fee info by port id, channel id and sequence

Usage:
  neutrond query feerefunder fee-info [port_id] [channel_id] [sequence] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for fee-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feerefunder params

```
shows the parameters of the module

Usage:
  neutrond query feerefunder params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query feerefunder

```
Querying commands for the feerefunder module

Usage:
  neutrond query feerefunder [flags]
  neutrond query feerefunder [command]

Available Commands:
  fee-info    queries fee info by port id, channel id and sequence
  params      shows the parameters of the module

Flags:
  -h, --help   help for feerefunder

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query feerefunder [command] --help" for more information about a command.

```

### neutrond query ibc channel channels

```
Query all channels from a chain

Usage:
  neutrond query ibc channel channels [flags]

Examples:
neutrond query ibc channel channels

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel client-state

```
Query the client state associated with a channel, by providing its port and channel identifiers.

Usage:
  neutrond query ibc channel client-state [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel client-state [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for client-state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel connections

```
Query all channels associated with a connection

Usage:
  neutrond query ibc channel connections [connection-id] [flags]

Examples:
neutrond query ibc channel connections [connection-id]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel end

```
Query an IBC channel end from a port and channel identifiers

Usage:
  neutrond query ibc channel end [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel end [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for end
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel next-sequence-receive

```
Query the next receive sequence for a given channel

Usage:
  neutrond query ibc channel next-sequence-receive [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel next-sequence-receive [port-id] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for next-sequence-receive
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel packet-ack

```
Query a packet acknowledgement

Usage:
  neutrond query ibc channel packet-ack [port-id] [channel-id] [sequence] [flags]

Examples:
neutrond query ibc channel packet-ack [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-ack
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel packet-commitment

```
Query a packet commitment

Usage:
  neutrond query ibc channel packet-commitment [port-id] [channel-id] [sequence] [flags]

Examples:
neutrond query ibc channel packet-commitment [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-commitment
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel packet-commitments

```
Query all packet commitments associated with a channel

Usage:
  neutrond query ibc channel packet-commitments [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel packet-commitments [port-id] [channel-id]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel packet-receipt

```
Query a packet receipt

Usage:
  neutrond query ibc channel packet-receipt [port-id] [channel-id] [sequence] [flags]

Examples:
neutrond query ibc channel packet-receipt [port-id] [channel-id] [sequence]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-receipt
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel unreceived-acks

```
Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain.

The return value represents:
- Unreceived packet acknowledgement: packet commitment exists on original sending (executing) chain and ack exists on receiving chain.

Usage:
  neutrond query ibc channel unreceived-acks [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel unreceived-acks [port-id] [channel-id] --sequences=1,2,3

Flags:
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for unreceived-acks
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string          Output format (text|json) (default "text")
      --sequences int64Slice   comma separated list of packet sequence numbers (default [])

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel unreceived-packets

```
Determine if a packet, given a list of packet commitment sequences, is unreceived.

The return value represents:
- Unreceived packet commitments: no acknowledgement exists on receiving chain for the given packet commitment sequence on sending chain.

Usage:
  neutrond query ibc channel unreceived-packets [port-id] [channel-id] [flags]

Examples:
neutrond query ibc channel unreceived-packets [port-id] [channel-id] --sequences=1,2,3

Flags:
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for unreceived-packets
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string          Output format (text|json) (default "text")
      --sequences int64Slice   comma separated list of packet sequence numbers (default [])

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc channel

```
IBC channel query subcommands

Usage:
  neutrond query ibc channel [flags]
  neutrond query ibc channel [command]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc channel [command] --help" for more information about a command.

```

### neutrond query ibc client consensus-state-heights

```
Query the heights of all consensus states associated with the provided client ID.

Usage:
  neutrond query ibc client consensus-state-heights [client-id] [flags]

Examples:
neutrond query ibc client consensus-state-heights [client-id]

Flags:
      --count-total       count total number of records in consensus state heights to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for consensus-state-heights
      --limit uint        pagination limit of consensus state heights to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of consensus state heights to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of consensus state heights to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of consensus state heights to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client consensus-state

```
Query the consensus state for a particular light client at a given height.
If the '--latest' flag is included, the query returns the latest consensus state, overriding the height argument.

Usage:
  neutrond query ibc client consensus-state [client-id] [height] [flags]

Examples:
neutrond query ibc client  consensus-state [client-id] [height]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for consensus-state
      --latest-height   return latest stored consensus state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client consensus-states

```
Query all the consensus states from a given client state.

Usage:
  neutrond query ibc client consensus-states [client-id] [flags]

Examples:
neutrond query ibc client consensus-states [client-id]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client header

```
Query the latest Tendermint header of the running chain

Usage:
  neutrond query ibc client header [flags]

Examples:
neutrond query ibc client  header

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for header
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client params

```
Query the current ibc client parameters

Usage:
  neutrond query ibc client params [flags]

Examples:
neutrond query ibc client params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client self-consensus-state

```
Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.

Usage:
  neutrond query ibc client self-consensus-state [flags]

Examples:
neutrond query ibc client self-consensus-state

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for self-consensus-state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client state

```
Query stored client state

Usage:
  neutrond query ibc client state [client-id] [flags]

Examples:
neutrond query ibc client state [client-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for state
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client states

```
Query all available light clients

Usage:
  neutrond query ibc client states [flags]

Examples:
neutrond query ibc client states

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client status

```
Query client activity status. Any client without an 'Active' status is considered inactive

Usage:
  neutrond query ibc client status [client-id] [flags]

Examples:
neutrond query ibc client status [client-id]

Flags:
  -h, --help   help for status

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc client

```
IBC client query subcommands

Usage:
  neutrond query ibc client [flags]
  neutrond query ibc client [command]

Available Commands:
  consensus-state         Query the consensus state of a client at a given height
  consensus-state-heights Query the heights of all consensus states of a client.
  consensus-states        Query all the consensus states of a client.
  header                  Query the latest header of the running chain
  params                  Query the current ibc client parameters
  self-consensus-state    Query the self consensus state for this chain
  state                   Query a client state
  states                  Query all available light clients
  status                  Query client status

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc client [command] --help" for more information about a command.

```

### neutrond query ibc connection connections

```
Query all connections ends from a chain

Usage:
  neutrond query ibc connection connections [flags]

Examples:
neutrond query ibc connection connections

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc connection end

```
Query stored connection end

Usage:
  neutrond query ibc connection end [connection-id] [flags]

Examples:
neutrond query ibc connection end [connection-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for end
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc connection path

```
Query stored client connection paths

Usage:
  neutrond query ibc connection path [client-id] [flags]

Examples:
neutrond query  ibc connection path [client-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for path
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --prove           show proofs for the query results (default true)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc connection

```
IBC connection query subcommands

Usage:
  neutrond query ibc connection [command]

Available Commands:
  connections Query all connections
  end         Query stored connection end
  path        Query stored client connection paths

Flags:
  -h, --help   help for connection

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc connection [command] --help" for more information about a command.

```

### neutrond query ibc-router params

```
Query the current ibc-router parameters

Usage:
  neutrond query ibc-router params [flags]

Examples:
neutrond query ibc-router params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-router

```
Usage:
  neutrond query ibc-router [command]

Available Commands:
  params      Query the current ibc-router parameters

Flags:
  -h, --help   help for ibc-router

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc-router [command] --help" for more information about a command.

```

### neutrond query ibc-transfer denom-hash

```
Query the denom hash info from a given denom trace

Usage:
  neutrond query ibc-transfer denom-hash [trace] [flags]

Examples:
neutrond query ibc-transfer denom-hash transfer/channel-0/uatom

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-hash
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-transfer denom-trace

```
Query the denom trace info from a given trace hash or ibc denom

Usage:
  neutrond query ibc-transfer denom-trace [hash/denom] [flags]

Examples:
neutrond query ibc-transfer denom-trace 27A6394C3F9FF9C9DCF5DFFADF9BB5FE9A37C7E92B006199894CF1824DF9AC7C

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-trace
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-transfer denom-traces

```
Query the trace info for all token denominations

Usage:
  neutrond query ibc-transfer denom-traces [flags]

Examples:
neutrond query ibc-transfer denom-traces

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-transfer escrow-address

```
Get the escrow address for a channel

Usage:
  neutrond query ibc-transfer escrow-address [flags]

Examples:
neutrond query ibc-transfer escrow-address [port] [channel-id]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for escrow-address
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-transfer params

```
Query the current ibc-transfer parameters

Usage:
  neutrond query ibc-transfer params [flags]

Examples:
neutrond query ibc-transfer params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibc-transfer

```
IBC fungible token transfer query subcommands

Usage:
  neutrond query ibc-transfer [command]

Available Commands:
  denom-hash     Query the denom hash info from a given denom trace
  denom-trace    Query the denom trace info from a given trace hash or ibc denom
  denom-traces   Query the trace info for all token denominations
  escrow-address Get the escrow address for a channel
  params         Query the current ibc-transfer parameters

Flags:
  -h, --help   help for ibc-transfer

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc-transfer [command] --help" for more information about a command.

```

### neutrond query ibc

```
Querying commands for the IBC module

Usage:
  neutrond query ibc [flags]
  neutrond query ibc [command]

Available Commands:
  channel     IBC channel query subcommands
  client      IBC client query subcommands
  connection  IBC connection query subcommands

Flags:
  -h, --help   help for ibc

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibc [command] --help" for more information about a command.

```

### neutrond query ibchooks wasm-sender

```
Generate the local address for a wasm hooks sender.
Example:
$ neutrond query ibc-hooks wasm-hooks-sender channel-42 juno12smx2wdlyttvyzvzg54y2vnqwq2qjatezqwqxu

Usage:
  neutrond query ibchooks wasm-sender <channelID> <originalSender> [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for wasm-sender
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query ibchooks

```
Querying commands for the ibchooks module

Usage:
  neutrond query ibchooks [flags]
  neutrond query ibchooks [command]

Available Commands:
  wasm-sender Generate the local address for a wasm hooks sender

Flags:
  -h, --help   help for ibchooks

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query ibchooks [command] --help" for more information about a command.

```

### neutrond query interchain-accounts controller interchain-account

```
Query the controller submodule for the interchain account address for a given owner on a particular connection

Usage:
  neutrond query interchain-accounts controller interchain-account [owner] [connection-id] [flags]

Examples:
neutrond query interchain-accounts controller interchain-account cosmos1layxcsmyye0dc0har9sdfzwckaz8sjwlfsj8zs connection-0

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for interchain-account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchain-accounts controller params

```
Query the current interchain-accounts controller submodule parameters

Usage:
  neutrond query interchain-accounts controller params [flags]

Examples:
neutrond query interchain-accounts controller params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchain-accounts controller

```
interchain-accounts controller subcommands

Usage:
  neutrond query interchain-accounts controller [command]

Available Commands:
  interchain-account Query the interchain account address for a given owner on a particular connection
  params             Query the current interchain-accounts controller submodule parameters

Flags:
  -h, --help   help for controller

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchain-accounts controller [command] --help" for more information about a command.

```

### neutrond query interchain-accounts host packet-events

```
Query the interchain-accounts host submodule packet events for a particular channel and sequence

Usage:
  neutrond query interchain-accounts host packet-events [channel-id] [sequence] [flags]

Examples:
neutrond query interchain-accounts host packet-events channel-0 100

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for packet-events
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchain-accounts host params

```
Query the current interchain-accounts host submodule parameters

Usage:
  neutrond query interchain-accounts host params [flags]

Examples:
neutrond query interchain-accounts host params

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchain-accounts host

```
interchain-accounts host subcommands

Usage:
  neutrond query interchain-accounts host [command]

Available Commands:
  packet-events Query the interchain-accounts host submodule packet events
  params        Query the current interchain-accounts host submodule parameters

Flags:
  -h, --help   help for host

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchain-accounts host [command] --help" for more information about a command.

```

### neutrond query interchain-accounts

```
interchain-accounts subcommands

Usage:
  neutrond query interchain-accounts [command]

Aliases:
  interchain-accounts, ica

Available Commands:
  controller  interchain-accounts controller subcommands
  host        interchain-accounts host subcommands

Flags:
  -h, --help   help for interchain-accounts

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchain-accounts [command] --help" for more information about a command.

```

### neutrond query interchainqueries params

```
shows the parameters of the module

Usage:
  neutrond query interchainqueries params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchainqueries query-last-remote-height

```
queries last remote height by connection id

Usage:
  neutrond query interchainqueries query-last-remote-height [connection-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for query-last-remote-height
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchainqueries query-result

```
queries result for registered query

Usage:
  neutrond query interchainqueries query-result [query-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for query-result
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchainqueries registered-queries

```
queries all the interchain queries in the module

Usage:
  neutrond query interchainqueries registered-queries [flags]

Flags:
      --connection_id string   (optional) filter by connection id
      --count-total            count total number of records in registered queries to query for
      --height int             Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help                   help for registered-queries
      --limit uint             pagination limit of registered queries to query for (default 100)
      --node string            <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint            pagination offset of registered queries to query for
  -o, --output string          Output format (text|json) (default "text")
      --owners stringArray     (optional) filter by query owners
      --page uint              pagination page of registered queries to query for. This sets offset to a multiple of limit (default 1)
      --page-key string        pagination page-key of registered queries to query for
      --reverse                results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchainqueries registered-query

```
queries all the interchain queries in the module

Usage:
  neutrond query interchainqueries registered-query [id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for registered-query
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchainqueries

```
Querying commands for the interchainqueries module

Usage:
  neutrond query interchainqueries [flags]
  neutrond query interchainqueries [command]

Available Commands:
  params                   shows the parameters of the module
  query-last-remote-height queries last remote height by connection id
  query-result             queries result for registered query
  registered-queries       queries all the interchain queries in the module
  registered-query         queries all the interchain queries in the module

Flags:
  -h, --help   help for interchainqueries

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchainqueries [command] --help" for more information about a command.

```

### neutrond query interchaintxs interchain-account

```
get the interchain account address for a specific combination of owner-address, connection-id and interchain-account-id

Usage:
  neutrond query interchaintxs interchain-account [owner-address] [connection-id] [interchain-account-id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for interchain-account
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchaintxs params

```
shows the parameters of the module

Usage:
  neutrond query interchaintxs params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query interchaintxs

```
Querying commands for the interchaintxs module

Usage:
  neutrond query interchaintxs [flags]
  neutrond query interchaintxs [command]

Available Commands:
  interchain-account get the interchain account address for a specific combination of owner-address, connection-id and interchain-account-id
  params             shows the parameters of the module

Flags:
  -h, --help   help for interchaintxs

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query interchaintxs [command] --help" for more information about a command.

```

### neutrond query params subspace

```
Query for raw parameters by subspace and key

Usage:
  neutrond query params subspace [subspace] [key] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for subspace
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query params

```
Querying commands for the params module

Usage:
  neutrond query params [flags]
  neutrond query params [command]

Available Commands:
  subspace    Query for raw parameters by subspace and key

Flags:
  -h, --help   help for params

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query params [command] --help" for more information about a command.

```

### neutrond query slashing params

```
Query genesis parameters for the slashing module:

$ <appd> query slashing params

Usage:
  neutrond query slashing params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query slashing signing-info

```
Use a validators' consensus public key to find the signing-info for that validator:

$ <appd> query slashing signing-info '{"@type":"/cosmos.crypto.ed25519.PubKey","key":"OauFcTKbN5Lx3fJL689cikXBqe+hcp6Y+x0rYUdR9Jk="}'

Usage:
  neutrond query slashing signing-info [validator-conspub] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for signing-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query slashing signing-infos

```
signing infos of validators:

$ <appd> query slashing signing-infos

Usage:
  neutrond query slashing signing-infos [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query slashing

```
Querying commands for the slashing module

Usage:
  neutrond query slashing [flags]
  neutrond query slashing [command]

Available Commands:
  params        Query the current slashing parameters
  signing-info  Query a validator's signing information
  signing-infos Query signing information of all validators

Flags:
  -h, --help   help for slashing

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query slashing [command] --help" for more information about a command.

```

### neutrond query tendermint-validator-set

```
Get the full tendermint validator set at given height

Usage:
  neutrond query tendermint-validator-set [height] [flags]

Flags:
  -h, --help                     help for tendermint-validator-set
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test) (default "os")
      --limit int                Query number of results returned per page (default 100)
  -n, --node string              Node to connect to (default "tcp://localhost:26657")
      --page int                 Query a specific page of paginated results (default 1)

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query tokenfactory denom-authority-metadata

```
Get the authority metadata for a specific denom

Usage:
  neutrond query tokenfactory denom-authority-metadata [denom] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denom-authority-metadata
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query tokenfactory denoms-from-creator

```
Returns a list of all tokens created by a specific creator address

Usage:
  neutrond query tokenfactory denoms-from-creator [creator address] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for denoms-from-creator
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query tokenfactory params

```
Get the params for the x/tokenfactory module

Usage:
  neutrond query tokenfactory params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query tokenfactory

```
Querying commands for the tokenfactory module

Usage:
  neutrond query tokenfactory [flags]
  neutrond query tokenfactory [command]

Available Commands:
  denom-authority-metadata Get the authority metadata for a specific denom
  denoms-from-creator      Returns a list of all tokens created by a specific creator address
  params                   Get the params for the x/tokenfactory module

Flags:
  -h, --help   help for tokenfactory

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query tokenfactory [command] --help" for more information about a command.

```

### neutrond query tx

```
Example:
$ neutrond query tx <hash>
$ neutrond query tx --type=acc_seq <addr>/<sequence>
$ neutrond query tx --type=signature <sig1_base64>,<sig2_base64...>

Usage:
  neutrond query tx --type=[hash|acc_seq|signature] [hash|acc_seq|signature] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for tx
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")
      --type string     The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query txs

```
Search for transactions that match the exact given events where results are paginated.
Each event takes the form of '{eventType}.{eventAttribute}={value}'. Please refer
to each module's documentation for the full set of events to query for. Each module
documents its respective events under 'xx_events.md'.

Example:
$ neutrond query txs --events 'message.sender=cosmos1...&message.action=withdraw_delegator_reward' --page 1 --limit 30

Usage:
  neutrond query txs [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query upgrade applied

```
If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied.
This helps a client determine which binary was valid over a given range of blocks, as well as more context to understand past migrations.

Usage:
  neutrond query upgrade applied [upgrade-name] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for applied
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query upgrade plan

```
Gets the currently scheduled upgrade plan, if one exists

Usage:
  neutrond query upgrade plan [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for plan
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query upgrade

```
Querying commands for the upgrade module

Usage:
  neutrond query upgrade [command]

Available Commands:
  applied         block header for height at which a completed upgrade was applied
  module_versions get the list of module versions
  plan            get upgrade plan (if one exists)

Flags:
  -h, --help   help for upgrade

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query upgrade [command] --help" for more information about a command.

```

### neutrond query wasm build-address

```
build contract address

Usage:
  neutrond query wasm build-address [code-hash] [creator-address] [salt-hex-encoded] [json_encoded_init_args (required when set as fixed)] [flags]

Aliases:
  build-address, address

Flags:
      --ascii   ascii encoded salt
      --b64     base64 encoded salt
  -h, --help    help for build-address
      --hex     hex encoded salt

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm code-info

```
Prints out metadata of a code id

Usage:
  neutrond query wasm code-info [code_id] [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for code-info
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm code

```
Downloads wasm bytecode for given code id

Usage:
  neutrond query wasm code [code_id] [output filename] [flags]

Aliases:
  code, source-code, source

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for code
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm contract-history

```
Prints out the code history for a contract given its address

Usage:
  neutrond query wasm contract-history [bech32_address] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm contract-state all

```
Prints out all internal state of a contract given its address

Usage:
  neutrond query wasm contract-state all [bech32_address] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm contract-state raw

```
Prints out internal state for of a contract given its address

Usage:
  neutrond query wasm contract-state raw [bech32_address] [key] [flags]

Flags:
      --ascii           ascii encoded key argument
      --b64             base64 encoded key argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for raw
      --hex             hex encoded key argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm contract-state smart

```
Calls contract with given address with query data and prints the returned result

Usage:
  neutrond query wasm contract-state smart [bech32_address] [query] [flags]

Flags:
      --ascii           ascii encoded query argument
      --b64             base64 encoded query argument
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for smart
      --hex             hex encoded query argument
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm contract-state

```
Querying commands for the wasm module

Usage:
  neutrond query wasm contract-state [flags]
  neutrond query wasm contract-state [command]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query wasm contract-state [command] --help" for more information about a command.

```

### neutrond query wasm contract

```
Prints out metadata of a contract given its address

Usage:
  neutrond query wasm contract [bech32_address] [flags]

Aliases:
  contract, meta, c

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for contract
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm libwasmvm-version

```
Get libwasmvm version

Usage:
  neutrond query wasm libwasmvm-version [flags]

Aliases:
  libwasmvm-version, lib-version

Flags:
  -h, --help   help for libwasmvm-version

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm list-code

```
List all wasm bytecode on the chain

Usage:
  neutrond query wasm list-code [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm list-contract-by-code

```
List wasm all bytecode on the chain for given code id

Usage:
  neutrond query wasm list-contract-by-code [code_id] [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm list-contracts-by-creator

```
List all contracts by creator

Usage:
  neutrond query wasm list-contracts-by-creator [creator] [flags]

Flags:
      --count-total       count total number of records in list contracts by creator to query for
      --height int        Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help              help for list-contracts-by-creator
      --limit uint        pagination limit of list contracts by creator to query for (default 100)
      --node string       <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
      --offset uint       pagination offset of list contracts by creator to query for
  -o, --output string     Output format (text|json) (default "text")
      --page uint         pagination page of list contracts by creator to query for. This sets offset to a multiple of limit (default 1)
      --page-key string   pagination page-key of list contracts by creator to query for
      --reverse           results are sorted in descending order

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm params

```
Query the current wasm parameters

Usage:
  neutrond query wasm params [flags]

Flags:
      --height int      Use a specific height to query state at (this can error if the node is pruning state)
  -h, --help            help for params
      --node string     <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm pinned

```
List all pinned code ids

Usage:
  neutrond query wasm pinned [flags]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond query wasm

```
Querying commands for the wasm module

Usage:
  neutrond query wasm [flags]
  neutrond query wasm [command]

Available Commands:
  build-address             build contract address
  code                      Downloads wasm bytecode for given code id
  code-info                 Prints out metadata of a code id
  contract                  Prints out metadata of a contract given its address
  contract-history          Prints out the code history for a contract given its address
  contract-state            Querying commands for the wasm module
  libwasmvm-version         Get libwasmvm version
  list-code                 List all wasm bytecode on the chain
  list-contract-by-code     List wasm all bytecode on the chain for given code id
  list-contracts-by-creator List all contracts by creator
  params                    Query the current wasm parameters
  pinned                    List all pinned code ids

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query wasm [command] --help" for more information about a command.

```

### neutrond query

```
Querying subcommands

Usage:
  neutrond query [flags]
  neutrond query [command]

Aliases:
  query, q

Available Commands:
  account                  Query for account by address
  adminmodule              Querying commands for the adminmodule module
  auth                     Querying commands for the auth module
  authz                    Querying commands for the authz module
  bank                     Querying commands for the bank module
  block                    Get verified data for a the block at given height
  ccvconsumer              Querying commands for the ccv consumer module
  contractmanager          Querying commands for the contractmanager module
  cron                     Querying commands for the cron module
  evidence                 Query for evidence by hash or for all (paginated) submitted evidence
  feeburner                Querying commands for the feeburner module
  feegrant                 Querying commands for the feegrant module
  feerefunder              Querying commands for the feerefunder module
  ibc                      Querying commands for the IBC module
  ibc-router               
  ibc-transfer             IBC fungible token transfer query subcommands
  ibchooks                 Querying commands for the ibchooks module
  interchain-accounts      interchain-accounts subcommands
  interchainqueries        Querying commands for the interchainqueries module
  interchaintxs            Querying commands for the interchaintxs module
  params                   Querying commands for the params module
  slashing                 Querying commands for the slashing module
  tendermint-validator-set Get the full tendermint validator set at given height
  tokenfactory             Querying commands for the tokenfactory module
  tx                       Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
  txs                      Query for paginated transactions that match a set of events
  upgrade                  Querying commands for the upgrade module
  wasm                     Querying commands for the wasm module

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for query

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond query [command] --help" for more information about a command.

```

### neutrond rollback

```

A state rollback is performed to recover from an incorrect application state transition,
when Tendermint has persisted an incorrect app hash and is thus unable to make
progress. Rollback overwrites a state at height n with the state at height n - 1.
The application also roll back to height n - 1. No blocks are removed, so upon
restarting Tendermint the transactions in block n will be re-executed against the
application.

Usage:
  neutrond rollback [flags]

Flags:
  -h, --help          help for rollback
      --home string   The application home directory (default "/Users/user/.neutrond")

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond start

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
  neutrond start [flags]

Flags:
      --abci string                                     specify abci transport (socket | grpc) (default "socket")
      --address string                                  Listen address (default "tcp://0.0.0.0:26658")
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
      --home string                                     The application home directory (default "/Users/user/.neutrond")
      --iavl-disable-fastnode                           Disable fast node for IAVL tree (default true)
      --inter-block-cache                               Enable inter-block caching (default true)
      --inv-check-period uint                           Assert registered invariants every N blocks
      --min-retain-blocks uint                          Minimum block height offset during ABCI commit to prune Tendermint blocks
      --minimum-gas-prices string                       Minimum gas prices to accept for transactions; Any fee in a tx must meet this minimum (e.g. 0.01photino;0.0001stake)
      --moniker string                                  node name (default "Pro16.local")
      --p2p.external-address string                     ip:port address to advertise to peers for them to dial
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
      --state-sync.snapshot-interval uint               State sync snapshot interval
      --state-sync.snapshot-keep-recent uint32          State sync snapshot to keep (default 2)
      --trace                                           Provide full stack traces for errors in ABCI Log
      --trace-store string                              Enable KVStore tracing to an output file
      --transport string                                Transport protocol: socket, grpc (default "socket")
      --unsafe-skip-upgrades ints                       Skip a set of upgrade heights to continue the old binary
      --with-tendermint                                 Run abci app embedded in-process with tendermint (default true)
      --x-crisis-skip-assert-invariants                 Skip x/crisis invariants check on startup

Global Flags:
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")

```

### neutrond status

```
Query remote node for status

Usage:
  neutrond status [flags]

Flags:
  -h, --help          help for status
  -n, --node string   Node to connect to (default "tcp://localhost:26657")

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint reset-state

```
Remove all the data and WAL

Usage:
  neutrond tendermint reset-state [flags]

Flags:
  -h, --help   help for reset-state

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint show-address

```
Shows this node's tendermint validator consensus address

Usage:
  neutrond tendermint show-address [flags]

Flags:
  -h, --help   help for show-address

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint show-node-id

```
Show this node's ID

Usage:
  neutrond tendermint show-node-id [flags]

Flags:
  -h, --help   help for show-node-id

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint show-validator

```
Show this node's tendermint validator info

Usage:
  neutrond tendermint show-validator [flags]

Flags:
  -h, --help   help for show-validator

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint unsafe-reset-all

```
(unsafe) Remove all the data and WAL, reset this node's validator to genesis state

Usage:
  neutrond tendermint unsafe-reset-all [flags]

Aliases:
  unsafe-reset-all, unsafe_reset_all

Flags:
  -h, --help             help for unsafe-reset-all
      --keep-addr-book   keep the address book intact

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint version

```
Print protocols' and libraries' version numbers
against which this app has been compiled.

Usage:
  neutrond tendermint version [flags]

Flags:
  -h, --help   help for version

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tendermint

```
Tendermint subcommands

Usage:
  neutrond tendermint [command]

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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tendermint [command] --help" for more information about a command.

```

### neutrond tx adminmodule add-admin

```
Broadcast message AddAdmin

Usage:
  neutrond tx adminmodule add-admin [admin] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for add-admin
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx adminmodule delete-admin

```
Broadcast message DeleteAdmin

Usage:
  neutrond tx adminmodule delete-admin [admin] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for delete-admin
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx adminmodule submit-proposal cancel-software-upgrade

```
Cancel a software upgrade.

Usage:
  neutrond tx adminmodule submit-proposal cancel-software-upgrade [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx adminmodule submit-proposal param-change

```
Submit a parameter proposal .
The proposal details must be supplied via a JSON file. For values that contains
objects, only non-empty fields will be updated.

IMPORTANT: Currently parameter changes are evaluated but not validated, so it is
very important that any "value" change is valid (ie. correct type and within bounds)
for its respective parameter, eg. "MaxValidators" should be an integer and not a decimal.

Proper vetting of a parameter change proposal should prevent this from happening
(no deposits should occur during the governance process), but it should be noted
regardless.

Example:
$ neutrond tx adminmodule submit-proposal param-change <path/to/proposal.json> --from=<key_or_address>

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
  ]
}

Usage:
  neutrond tx adminmodule submit-proposal param-change [proposal-file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx adminmodule submit-proposal software-upgrade

```
Submit a software upgrade.
Please specify a unique name and height OR time for the upgrade to take effect.
You may include info to reference a binary download link, in a format compatible with: https://github.com/cosmos/cosmos-sdk/tree/master/cosmovisor

Usage:
  neutrond tx adminmodule submit-proposal software-upgrade [name] (--upgrade-height [height] | --upgrade-time [time]) (--upgrade-info [info]) [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --description string       description of proposal
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --upgrade-height int       The height at which the upgrade must happen (not to be used together with --upgrade-time)
      --upgrade-info string      Optional info for the planned upgrade such as commit hash, etc.
      --upgrade-time string      The time at which the upgrade must happen (ex. 2006-01-02T15:04:05Z) (not to be used together with --upgrade-height)
  -y, --yes                      Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx adminmodule submit-proposal

```
Submit a proposal.
Proposal title, description, type and can be given directly or through a proposal JSON file.

Example:
$ neutrond adminmodule submit-proposal --proposal="path/to/proposal.json" --from mykey

Where proposal.json contains:

{
  "title": "Test Proposal",
  "description": "My awesome proposal",
  "type": "Text"
}

Which is equivalent to:

$ neutrond tx adminmodule submit-proposal --title="Test Proposal" --description="My awesome proposal" --type="Text" --from mykey

Usage:
  neutrond tx adminmodule submit-proposal [flags]
  neutrond tx adminmodule submit-proposal [command]

Available Commands:
  cancel-software-upgrade Cancel the current software upgrade proposal
  param-change            Submit a parameter change proposal
  software-upgrade        Submit a software upgrade proposal

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --description string       The proposal description
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx adminmodule submit-proposal [command] --help" for more information about a command.

```

### neutrond tx adminmodule

```
adminmodule transactions subcommands

Usage:
  neutrond tx adminmodule [flags]
  neutrond tx adminmodule [command]

Available Commands:
  add-admin       Broadcast message AddAdmin
  delete-admin    Broadcast message DeleteAdmin
  submit-proposal Submit a proposal

Flags:
  -h, --help   help for adminmodule

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx adminmodule [command] --help" for more information about a command.

```

### neutrond tx authz exec

```
execute tx on behalf of granter account:
Example:
 $ neutrond tx authz exec tx.json --from grantee
 $ neutrond tx bank send <granter> <recipient> --from <granter> --chain-id <chain-id> --generate-only > tx.json && neutrond tx authz exec tx.json --from grantee

Usage:
  neutrond tx authz exec [msg_tx_json_file] --from [grantee] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx authz grant

```
grant authorization to an address to execute a transaction on your behalf:

Examples:
 $ neutrond tx authz grant cosmos1skjw.. send /cosmos.bank.v1beta1.MsgSend --spend-limit=1000stake --from=cosmos1skl..
 $ neutrond tx authz grant cosmos1skjw.. generic --msg-type=/cosmos.gov.v1beta1.MsgVote --from=cosmos1sk..

Usage:
  neutrond tx authz grant <grantee> <authorization_type="send"|"generic"|"delegate"|"unbond"|"redelegate"> --from <granter> [flags]

Flags:
  -a, --account-number uint          The account number of the signing account (offline mode only)
      --allowed-validators strings   Allowed validators addresses separated by ,
  -b, --broadcast-mode string        Transaction broadcasting mode (sync|async|block) (default "sync")
      --deny-validators strings      Deny validators addresses separated by ,
      --dry-run                      ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --expiration int               The Unix timestamp. Default is one year. (default 1728223110)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx authz revoke

```
revoke authorization from a granter to a grantee:
Example:
 $ neutrond tx authz revoke cosmos1skj.. /cosmos.bank.v1beta1.MsgSend --from=cosmos1skj..

Usage:
  neutrond tx authz revoke [grantee] [msg_type] --from=[granter] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx authz

```
Authorize and revoke access to execute transactions on behalf of your address

Usage:
  neutrond tx authz [flags]
  neutrond tx authz [command]

Available Commands:
  exec        execute tx on behalf of granter account
  grant       Grant authorization to an address
  revoke      revoke authorization

Flags:
  -h, --help   help for authz

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx authz [command] --help" for more information about a command.

```

### neutrond tx bank send

```
Send funds from one account to another. 
		Note, the'--from' flag is ignored as it is implied from [from_key_or_address].
		When using '--dry-run' a key name cannot be used, only a bech32 address.

Usage:
  neutrond tx bank send [from_key_or_address] [to_address] [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx bank

```
Bank transaction subcommands

Usage:
  neutrond tx bank [flags]
  neutrond tx bank [command]

Available Commands:
  send        Send funds from one account to another. 
		Note, the'--from' flag is ignored as it is implied from [from_key_or_address].
		When using '--dry-run' a key name cannot be used, only a bech32 address.

Flags:
  -h, --help   help for bank

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx bank [command] --help" for more information about a command.

```

### neutrond tx broadcast

```
Broadcast transactions created with the --generate-only
flag and signed with the sign command. Read a transaction from [file_path] and
broadcast it to a node. If you supply a dash (-) argument in place of an input
filename, the command reads from standard input.

$ <appd> tx broadcast ./mytxn.json

Usage:
  neutrond tx broadcast [file_path] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx crisis invariant-broken

```
Submit proof that an invariant broken to halt the chain

Usage:
  neutrond tx crisis invariant-broken [module-name] [invariant-route] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx crisis

```
Crisis transactions subcommands

Usage:
  neutrond tx crisis [flags]
  neutrond tx crisis [command]

Available Commands:
  invariant-broken Submit proof that an invariant broken to halt the chain

Flags:
  -h, --help   help for crisis

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx crisis [command] --help" for more information about a command.

```

### neutrond tx cron

```
cron transactions subcommands

Usage:
  neutrond tx cron [flags]

Flags:
  -h, --help   help for cron

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx decode

```
Decode a binary encoded transaction string

Usage:
  neutrond tx decode [amino-byte-string] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx encode

```
Encode transactions created with the --generate-only flag and signed with the sign command.
Read a transaction from <file>, serialize it to the Amino wire protocol, and output it as base64.
If you supply a dash (-) argument in place of an input filename, the command reads from standard input.

Usage:
  neutrond tx encode [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx evidence

```
Evidence transaction subcommands

Usage:
  neutrond tx evidence [flags]

Flags:
  -h, --help   help for evidence

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx feegrant grant

```
Grant authorization to pay fees from your address. Note, the'--from' flag is
				ignored as it is implied from [granter].

Examples:
neutrond tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z or
neutrond tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --period 3600 --period-limit 10stake --expiration 36000 or
neutrond tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z 
	--allowed-messages "/cosmos.gov.v1beta1.MsgSubmitProposal,/cosmos.gov.v1beta1.MsgVote"

Usage:
  neutrond tx feegrant grant [granter_key_or_address] [grantee] [flags]

Flags:
  -a, --account-number uint        The account number of the signing account (offline mode only)
      --allowed-messages strings   Set of allowed messages for fee allowance
  -b, --broadcast-mode string      Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                    ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx feegrant revoke

```
revoke fee grant from a granter to a grantee. Note, the'--from' flag is
			ignored as it is implied from [granter].

Example:
 $ neutrond tx feegrant revoke cosmos1skj.. cosmos1skj..

Usage:
  neutrond tx feegrant revoke [granter] [grantee] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx feegrant

```
Grant and revoke fee allowance for a grantee by a granter

Usage:
  neutrond tx feegrant [flags]
  neutrond tx feegrant [command]

Available Commands:
  grant       Grant Fee allowance to an address
  revoke      revoke fee-grant

Flags:
  -h, --help   help for feegrant

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx feegrant [command] --help" for more information about a command.

```

### neutrond tx ibc channel

```
IBC channel transaction subcommands

Usage:
  neutrond tx ibc channel [flags]

Flags:
  -h, --help   help for channel

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc client create

```
create a new IBC client with the specified client state and consensus state
	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}
	- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}

Usage:
  neutrond tx ibc client create [path/to/client_state.json] [path/to/consensus_state.json] [flags]

Examples:
neutrond tx ibc client create [path/to/client_state.json] [path/to/consensus_state.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc client misbehaviour

```
submit a client misbehaviour to prevent future updates

Usage:
  neutrond tx ibc client misbehaviour [path/to/misbehaviour.json] [flags]

Examples:
neutrond tx ibc client misbehaviour [path/to/misbehaviour.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for misbehaviour

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc client update

```
update existing client with a header

Usage:
  neutrond tx ibc client update [client-id] [path/to/header.json] [flags]

Examples:
neutrond tx ibc client update [client-id] [path/to/header.json] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -h, --help   help for update

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc client upgrade

```
upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states
	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}
	- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}

Usage:
  neutrond tx ibc client upgrade [client-identifier] [path/to/client_state.json] [path/to/consensus_state.json] [upgrade-client-proof] [upgrade-consensus-state-proof] [flags]

Examples:
neutrond tx ibc client upgrade [client-identifier] [path/to/client_state.json] [path/to/consensus_state.json] [client-state-proof] [consensus-state-proof] --from node0 --home ../node0/<app>cli --chain-id $CID

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc client

```
IBC client transaction subcommands

Usage:
  neutrond tx ibc client [flags]
  neutrond tx ibc client [command]

Available Commands:
  create       create new IBC client
  misbehaviour submit a client misbehaviour
  update       update existing client with a header
  upgrade      upgrade an IBC client

Flags:
  -h, --help   help for client

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx ibc client [command] --help" for more information about a command.

```

### neutrond tx ibc-transfer transfer

```
Transfer a fungible token through IBC. Timeouts can be specified
as absolute or relative using the "absolute-timeouts" flag. Timeout height can be set by passing in the height string
in the form {revision}-{height} using the "packet-timeout-height" flag. Relative timeout height is added to the block
height queried from the latest consensus state corresponding to the counterparty channel. Relative timeout timestamp 
is added to the greater value of the local clock time and the block timestamp queried from the latest consensus state 
corresponding to the counterparty channel. Any timeout set to 0 is disabled.

Usage:
  neutrond tx ibc-transfer transfer [src-port] [src-channel] [receiver] [amount] [flags]

Examples:
neutrond tx ibc-transfer transfer [src-port] [src-channel] [receiver] [amount]

Flags:
      --absolute-timeouts               Timeout flags are used as absolute timeouts.
  -a, --account-number uint             The account number of the signing account (offline mode only)
  -b, --broadcast-mode string           Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                         ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --memo string                     Memo to be sent along with the packet.
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx ibc-transfer

```
IBC fungible token transfer transaction subcommands

Usage:
  neutrond tx ibc-transfer [flags]
  neutrond tx ibc-transfer [command]

Available Commands:
  transfer    Transfer a fungible token through IBC

Flags:
  -h, --help   help for ibc-transfer

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx ibc-transfer [command] --help" for more information about a command.

```

### neutrond tx ibc

```
IBC transaction subcommands

Usage:
  neutrond tx ibc [flags]
  neutrond tx ibc [command]

Available Commands:
  channel     IBC channel transaction subcommands
  client      IBC client transaction subcommands

Flags:
  -h, --help   help for ibc

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx ibc [command] --help" for more information about a command.

```

### neutrond tx interchainqueries remove-interchain-query

```
Remove interchain query

Usage:
  neutrond tx interchainqueries remove-interchain-query [query-id] [flags]

Aliases:
  remove-interchain-query, remove, r

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for remove-interchain-query
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx interchainqueries submit-query-result

```
Submit query result

Usage:
  neutrond tx interchainqueries submit-query-result [query-id] [result-file] [flags]

Aliases:
  submit-query-result, submit, s

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for submit-query-result
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx interchainqueries

```
interchainqueries transactions subcommands

Usage:
  neutrond tx interchainqueries [flags]
  neutrond tx interchainqueries [command]

Available Commands:
  remove-interchain-query Remove interchain query
  submit-query-result     Submit query result

Flags:
  -h, --help   help for interchainqueries

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx interchainqueries [command] --help" for more information about a command.

```

### neutrond tx interchaintxs

```
interchaintxs transactions subcommands

Usage:
  neutrond tx interchaintxs [flags]

Flags:
  -h, --help   help for interchaintxs

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx multisign-batch

```
Assemble a batch of multisig transactions generated by batch sign command.

Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the
multisig key [name], and attach the key name to the transaction read from [file].

Example:
$ neutrond tx multisign-batch transactions.json multisigk1k2k3 k1sigs.json k2sigs.json k3sig.json

The current multisig implementation defaults to amino-json sign mode.
The SIGN_MODE_DIRECT sign mode is not supported.'

Usage:
  neutrond tx multisign-batch [file] [name] [[signature-file]...] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx multisign

```
Sign transactions created with the --generate-only flag that require multisig signatures.

Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the
multisig key [name], and attach the key name to the transaction read from [file].

Example:
$ neutrond tx multisign transaction.json k1k2k3 k1sig.json k2sig.json k3sig.json

If --signature-only flag is on, output a JSON representation
of only the generated signature.

If the --offline flag is on, the client will not reach out to an external node.
Account number or sequence number lookups are not performed so you must
set these parameters manually.

The current multisig implementation defaults to amino-json sign mode.
The SIGN_MODE_DIRECT sign mode is not supported.'

Usage:
  neutrond tx multisign [file] [name] [[signature]...] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amino                    Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string          network chain ID
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx sign-batch

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
  neutrond tx sign-batch [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string          network chain ID
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx sign

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
  neutrond tx sign [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amino                    Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string          The network chain ID
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx slashing unjail

```
unjail a jailed validator:

$ <appd> tx slashing unjail --from mykey

Usage:
  neutrond tx slashing unjail [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx slashing

```
Slashing transaction subcommands

Usage:
  neutrond tx slashing [flags]
  neutrond tx slashing [command]

Available Commands:
  unjail      unjail validator previously jailed for downtime

Flags:
  -h, --help   help for slashing

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx slashing [command] --help" for more information about a command.

```

### neutrond tx tokenfactory burn

```
Burn tokens from an address. Must have admin authority to do so.

Usage:
  neutrond tx tokenfactory burn [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for burn
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx tokenfactory change-admin

```
Changes the admin address for a factory-created denom. Must have admin authority to do so.

Usage:
  neutrond tx tokenfactory change-admin [denom] [new-admin-address] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for change-admin
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx tokenfactory create-denom

```
create a new denom from an account

Usage:
  neutrond tx tokenfactory create-denom [subdenom] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for create-denom
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx tokenfactory mint

```
Mint a denom to an address. Must have admin authority to do so.

Usage:
  neutrond tx tokenfactory mint [amount] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for mint
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx tokenfactory

```
tokenfactory transactions subcommands

Usage:
  neutrond tx tokenfactory [flags]
  neutrond tx tokenfactory [command]

Available Commands:
  burn         Burn tokens from an address. Must have admin authority to do so.
  change-admin Changes the admin address for a factory-created denom. Must have admin authority to do so.
  create-denom create a new denom from an account
  mint         Mint a denom to an address. Must have admin authority to do so.

Flags:
  -h, --help   help for tokenfactory

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx tokenfactory [command] --help" for more information about a command.

```

### neutrond tx validate-signatures

```
Print the addresses that must sign the transaction, those who have already
signed it, and make sure that signatures are in the correct order.

The command would check whether all required signers have signed the transactions, whether
the signatures were collected in the right order, and if the signature is valid over the
given transaction. If the --offline flag is also set, signature validation over the
transaction will be not be performed as that will require RPC communication with a full node.

Usage:
  neutrond tx validate-signatures [file] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --chain-id string          The network chain ID
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx vesting create-vesting-account

```
Create a new vesting account funded with an allocation of tokens. The
account can either be a delayed or continuous vesting account, which is determined
by the '--delayed' flag. All vesting accouts created will have their start time
set by the committed block's time. The end_time must be provided as a UNIX epoch
timestamp.

Usage:
  neutrond tx vesting create-vesting-account [to_address] [amount] [end_time] [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --delayed                  Create a delayed vesting account if true
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx vesting

```
Vesting transaction subcommands

Usage:
  neutrond tx vesting [flags]
  neutrond tx vesting [command]

Available Commands:
  create-vesting-account Create a new vesting account funded with an allocation of tokens.

Flags:
  -h, --help   help for vesting

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx vesting [command] --help" for more information about a command.

```

### neutrond tx wasm clear-contract-admin

```
Clears admin for a contract to prevent further migrations

Usage:
  neutrond tx wasm clear-contract-admin [contract_addr_bech32] [flags]

Aliases:
  clear-contract-admin, clear-admin, clr-adm

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm execute

```
Execute a command on a wasm contract

Usage:
  neutrond tx wasm execute [contract_addr_bech32] [json_encoded_send_args] --amount [coins,optional] [flags]

Aliases:
  execute, run, call, exec, ex, e

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --amount string            Coins to send to the contract along with command
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm grant

```
Grant authorization to an address.
Examples:
$ neutrond tx grant <grantee_addr> execution <contract_addr> --allow-all-messages --max-calls 1 --no-token-transfer --expiration 1667979596

$ neutrond tx grant <grantee_addr> execution <contract_addr> --allow-all-messages --max-funds 100000uwasm --expiration 1667979596

$ neutrond tx grant <grantee_addr> execution <contract_addr> --allow-all-messages --max-calls 5 --max-funds 100000uwasm --expiration 1667979596

Usage:
  neutrond tx wasm grant [grantee] [message_type="execution"|"migration"] [contract_addr_bech32] --allow-raw-msgs [msg1,msg2,...] --allow-msg-keys [key1,key2,...] --allow-all-messages [flags]

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --allow-all-messages       Allow all messages
      --allow-msg-keys strings   Allowed msg keys
      --allow-raw-msgs strings   Allowed raw msgs
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --expiration int           The Unix timestamp.
      --fee-account string       Fee account pays fees for the transaction instead of deducting from the signer
      --fees string              Fees to pay along with transaction; eg: 10uatom
      --from string              Name or address of private key with which to sign
      --gas string               gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float     adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string        Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only            Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                     help for grant
      --keyring-backend string   Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string       The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                   Use a connected Ledger device
      --max-calls uint           Maximal number of calls to the contract
      --max-funds string         Maximal amount of tokens transferable to the contract.
      --no-token-transfer        Don't allow token transfer
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm instantiate

```
Creates a new instance of an uploaded wasm code with the given 'constructor' message.
Each contract instance has a unique address assigned.
Example:
$ neutrond tx wasm instantiate 1 '{"foo":"bar"}' --admin="$(neutrond keys show mykey -a)" \
  --from mykey --amount="100ustake" --label "local0.1.0"

Usage:
  neutrond tx wasm instantiate [code_id_int64] [json_encoded_init_args] --label [text] --admin [address,optional] --amount [coins,optional]  [flags]

Aliases:
  instantiate, start, init, inst, i

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
      --admin string             Address or key name of an admin
      --amount string            Coins to send to the contract during instantiation
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm migrate

```
Migrate a wasm contract to a new code version

Usage:
  neutrond tx wasm migrate [contract_addr_bech32] [new_code_id_int64] [json_encoded_migration_args] [flags]

Aliases:
  migrate, update, mig, m

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm set-contract-admin

```
Set new admin for a contract

Usage:
  neutrond tx wasm set-contract-admin [contract_addr_bech32] [new_admin_addr_bech32] [flags]

Aliases:
  set-contract-admin, new-admin, admin, set-adm, sa

Flags:
  -a, --account-number uint      The account number of the signing account (offline mode only)
  -b, --broadcast-mode string    Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                  ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
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
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm store

```
Upload a wasm binary

Usage:
  neutrond tx wasm store [wasm file] [flags]

Aliases:
  store, upload, st, s

Flags:
  -a, --account-number uint                   The account number of the signing account (offline mode only)
  -b, --broadcast-mode string                 Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                               ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string                    Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                           Fees to pay along with transaction; eg: 10uatom
      --from string                           Name or address of private key with which to sign
      --gas string                            gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float                  adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                     Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                         Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                                  help for store
      --instantiate-anyof-addresses strings   Any of the addresses can instantiate a contract from the code, optional
      --instantiate-everybody string          Everybody can instantiate a contract from the code, optional
      --instantiate-nobody string             Nobody except the governance process can instantiate a contract from the code, optional
      --instantiate-only-address string       Removed: use instantiate-anyof-addresses instead
      --keyring-backend string                Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                    The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                                Use a connected Ledger device
      --node string                           <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                           Note to add a description to the transaction (previously --memo)
      --offline                               Offline mode (does not allow any online functionality
  -o, --output string                         Output format (text|json) (default "json")
  -s, --sequence uint                         The sequence number of the signing account (offline mode only)
      --sign-mode string                      Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint                   Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                                   Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm update-instantiate-config

```
Update instantiate config for a codeID

Usage:
  neutrond tx wasm update-instantiate-config [code_id_int64] [flags]

Aliases:
  update-instantiate-config, update-instantiate-config

Flags:
  -a, --account-number uint                   The account number of the signing account (offline mode only)
  -b, --broadcast-mode string                 Transaction broadcasting mode (sync|async|block) (default "sync")
      --dry-run                               ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
      --fee-account string                    Fee account pays fees for the transaction instead of deducting from the signer
      --fees string                           Fees to pay along with transaction; eg: 10uatom
      --from string                           Name or address of private key with which to sign
      --gas string                            gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
      --gas-adjustment float                  adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
      --gas-prices string                     Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
      --generate-only                         Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
  -h, --help                                  help for update-instantiate-config
      --instantiate-anyof-addresses strings   Any of the addresses can instantiate a contract from the code, optional
      --instantiate-everybody string          Everybody can instantiate a contract from the code, optional
      --instantiate-nobody string             Nobody except the governance process can instantiate a contract from the code, optional
      --instantiate-only-address string       Removed: use instantiate-anyof-addresses instead
      --keyring-backend string                Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
      --keyring-dir string                    The client Keyring directory; if omitted, the default 'home' directory will be used
      --ledger                                Use a connected Ledger device
      --node string                           <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
      --note string                           Note to add a description to the transaction (previously --memo)
      --offline                               Offline mode (does not allow any online functionality
  -o, --output string                         Output format (text|json) (default "json")
  -s, --sequence uint                         The sequence number of the signing account (offline mode only)
      --sign-mode string                      Choose sign mode (direct|amino-json), this is an advanced feature
      --timeout-height uint                   Set a block timeout height to prevent the tx from being committed past a certain height
  -y, --yes                                   Skip tx broadcasting prompt confirmation

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond tx wasm

```
Wasm transaction subcommands

Usage:
  neutrond tx wasm [flags]
  neutrond tx wasm [command]

Available Commands:
  clear-contract-admin      Clears admin for a contract to prevent further migrations
  execute                   Execute a command on a wasm contract
  grant                     Grant authorization to an address
  instantiate               Instantiate a wasm contract
  instantiate2              Instantiate a wasm contract with predictable address
  migrate                   Migrate a wasm contract to a new code version
  set-contract-admin        Set new admin for a contract
  store                     Upload a wasm binary
  update-instantiate-config Update instantiate config for a codeID

Flags:
  -h, --help   help for wasm

Global Flags:
      --chain-id string     The network chain ID
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Use "neutrond tx wasm [command] --help" for more information about a command.

```

### neutrond tx

```
Transactions subcommands

Usage:
  neutrond tx [flags]
  neutrond tx [command]

Available Commands:
                      
  adminmodule         adminmodule transactions subcommands
  authz               Authorization transactions subcommands
  bank                Bank transaction subcommands
  broadcast           Broadcast transactions generated offline
  crisis              Crisis transactions subcommands
  cron                cron transactions subcommands
  decode              Decode a binary encoded transaction string
  encode              Encode transactions generated offline
  evidence            Evidence transaction subcommands
  feegrant            Feegrant transactions subcommands
  ibc                 IBC transaction subcommands
  ibc-transfer        IBC fungible token transfer transaction subcommands
  interchainqueries   interchainqueries transactions subcommands
  interchaintxs       interchaintxs transactions subcommands
  multisign           Generate multisig signatures for transactions generated offline
  multisign-batch     Assemble multisig transactions in batch from batch signatures
  sign                Sign a transaction generated offline
  sign-batch          Sign transaction batch files
  slashing            Slashing transaction subcommands
  tokenfactory        tokenfactory transactions subcommands
  validate-signatures validate transactions signatures
  vesting             Vesting transaction subcommands
  wasm                Wasm transaction subcommands

Flags:
      --chain-id string   The network chain ID
  -h, --help              help for tx

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

Additional help topics:
  neutrond tx upgrade    Upgrade transaction subcommands

Use "neutrond tx [command] --help" for more information about a command.

```

### neutrond validate-genesis

```
validates the genesis file at the default location or at the location passed as an arg

Usage:
  neutrond validate-genesis [file] [flags]

Flags:
  -h, --help   help for validate-genesis

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

### neutrond version

```
Print the application binary version information

Usage:
  neutrond version [flags]

Flags:
  -h, --help            help for version
      --long            Print long version information
  -o, --output string   Output format (text|json) (default "text")

Global Flags:
      --home string         directory for config and data (default "/Users/user/.neutrond")
      --log_format string   The logging format (json|plain) (default "plain")
      --log_level string    The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
      --trace               print out full stack trace on errors

```

