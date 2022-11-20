

# gaiad keys in a form of table
export def "gaiad _keys table" [] {
	gaiad keys list --output text | lines | window 5 -s 5 | 
    each {|it| ($it| parse -r '(?P<col>\w+):(?P<value>.*)')} | 
    each {|it| ($it| transpose -r)} | reduce {|it, acc| $it | append $acc} | 
    select name type address 
}

# Helper function to use addresses for completions in --from parameter
export def "nu-complete gaiad _keys values" [] {
    (gaiad _keys table).name | zip (gaiad _keys table).address | flatten
  }

def "nu-completions-gaiad--os-file-kwallet-pass-test-memory-" [] { ["os", "file", "kwallet", "pass", "test", "memory"] }
def "nu-completions-gaiad--json-plain-" [] { ["json", "plain"] }
def "nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-" [] { ["trace", "debug", "info", "warn", "error", "fatal", "panic"] }
def "nu-completions-gaiad--text-json-" [] { ["text", "json"] }
def "nu-completions-gaiad--default-nothing-everything-custom-" [] { ["default", "nothing", "everything", "custom"] }
def "nu-completions-gaiad--sync-async-block-" [] { ["sync", "async", "block"] }
def "nu-completions-gaiad--os-file-test-" [] { ["os", "file", "test"] }
def "nu-completions-gaiad--socket---grpc-" [] { ["socket", "grpc"] }
def "nu-completions-gaiad--acc-val-cons-" [] { ["acc", "val", "cons"] }
def "nu-completions-gaiad--direct-amino-json-" [] { ["direct", "amino-json"] }
def "nu-completions-gaiad--os-file-kwallet-pass-test-" [] { ["os", "file", "kwallet", "pass", "test"] }

# Add a genesis account to genesis.json. The provided account must specify the account address or key name and a list of initial coins. If a key name is given, the address will be looked up in the local Keybase. The list of initial tokens must contain valid denominations. Accounts may optionally be supplied with vesting parameters.
export extern 'gaiad add-genesis-account' [
	address_or_key_name: string
	coin: string
	coin: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for add-genesis-account
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--vesting-amount: string		# amount of coins for vesting accounts
	--vesting-end-time: int		# schedule end time (unix epoch) for vesting accounts
	--vesting-start-time: int		# schedule start time (unix epoch) for vesting accounts
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Collect genesis txs and output a genesis.json file
export extern 'gaiad collect-gentxs' [
	--gentx-dir: string		# override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
	--help(-h)		# help for collect-gentxs
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Create or query an application CLI configuration file
export extern 'gaiad config' [
	key: string
	value: string
	--help(-h)		# help for config
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Convert an address between hex encoding and bech32.
export extern 'gaiad debug addr' [
	address: string
	--help(-h)		# help for addr
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Decode a pubkey from proto JSON and display it's address.
export extern 'gaiad debug pubkey' [
	pubkey: string
	--help(-h)		# help for pubkey
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Convert raw-bytes to hex.
export extern 'gaiad debug raw-bytes' [
	raw_bytes: string
	--help(-h)		# help for raw-bytes
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Export state to JSON
export extern 'gaiad export' [
	--for-zero-height		# Export state to start at height zero (perform preproccessing)
	--height: int		# Export state from a particular height (-1 means latest height) (default -1)
	--help(-h)		# help for export
	--jail-allowed-addrs: string		# Comma-separated list of operator addresses of jailed validators to unjail
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Generate a genesis transaction that creates a validator with a self-delegation, that is signed by the key in the Keyring referenced by a given name. A node ID and Bech32 consensus pubkey may optionally be provided. If they are omitted, they will be retrieved from the priv_validator.json file. The following default parameters are included:      	delegation amount:           100000000stake 	commissi
export extern 'gaiad gentx' [
	key_name: string
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Amount of coins to bond
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# The network chain ID
	--commission-max-change-rate: string		# The maximum commission change rate percentage (per day)
	--commission-max-rate: string		# The maximum commission rate percentage
	--commission-rate: string		# The initial commission rate percentage
	--details: string		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for gentx
	--identity: string		# The (optional) identity signature (ex. UPort or Keybase)
	--ip: string		# The node's public IP (default "10.0.0.66")
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's (optional) moniker
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id: string		# The node's NodeID
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# Write the genesis transaction JSON document to the given file instead of the default location
	--pubkey: string		# The validator's Protobuf JSON encoded public key
	--security-contact: string		# The validator's (optional) security contact email
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Help provides help for any command in the application. Simply type gaiad help [path to command] for full details.
export extern 'gaiad help' [
	command: string
	--help(-h)		# help for help
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Initialize validators's and node's configuration files.
export extern 'gaiad init' [
	moniker: string
	--chain-id: string		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for init
	--overwrite(-o)		# overwrite the genesis.json file
	--recover		# provide seed phrase to recover existing key instead of creating
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Derive a new private key and encrypt to disk. Optionally specify a BIP39 mnemonic, a BIP39 passphrase to further secure the mnemonic, and a bip32 HD path to derive a specific account. The key will be stored under the given name and encrypted with the given password. The only input that is required is the encryption password. If run with -i, it will prompt the user for BIP44 path, BIP39 mnemonic, a
export extern 'gaiad keys add' [
	name: string
	--account: int		# Account number for HD derivation
	--algo: string		# Key signing algorithm to generate keys for (default "secp256k1")
	--coin-type: int		# coin type number for HD derivation (default 118)
	--dry-run		# Perform action, but don't add key to local keystore
	--hd-path: string		# Manual HD Path derivation (overrides BIP44 config)
	--help(-h)		# help for add
	--index: int		# Address index number for HD derivation
	--interactive(-i)		# Interactively prompt user for BIP39 passphrase and mnemonic
	--ledger		# Store a local reference to a private key on a Ledger device
	--multisig: string		# List of key names stored in keyring to construct a public legacy multisig key
	--multisig-threshold: int		# K out of N required signatures. For use in conjunction with --multisig (default 1)
	--no-backup		# Don't print out seed phrase (if others are watching the terminal)
	--nosort		# Keys passed to --multisig are taken in the order they're supplied
	--pubkey: string		# Parse a public key in JSON format and saves key info to <name> file.
	--recover		# Provide seed phrase to recover existing key instead of creating
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Delete keys from the Keybase backend. Note that removing offline or ledger keys will remove only the public key references stored locally, i.e. private keys stored in a ledger device cannot be deleted with the CLI.
export extern 'gaiad keys delete' [
	name: string
	--force(-f)		# Remove the key unconditionally without asking for the passphrase. Deprecated.
	--help(-h)		# help for delete
	--yes(-y)		# Skip confirmation prompt when deleting offline or ledger key references
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Export a private key from the local keyring in ASCII-armored encrypted format. When both the --unarmored-hex and --unsafe flags are selected, cryptographic private key material is exported in an INSECURE fashion that is designed to allow users to import their keys in hot wallets. This feature is for advanced users only that are confident about how to handle private keys work and are FULLY AWARE OF
export extern 'gaiad keys export' [
	name: string
	--help(-h)		# help for export
	--unarmored-hex		# Export unarmored hex privkey. Requires --unsafe.
	--unsafe		# Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Import a ASCII armored private key into the local keybase.
export extern 'gaiad keys import' [
	name: string
	keyfile: string
	--help(-h)		# help for import
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Return a list of all public keys stored by this key manager along with their associated name and address.
export extern 'gaiad keys list' [
	--help(-h)		# help for list
	--list-names(-n)		# List names only
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring. The legacy Keybase used to persist keys in a LevelDB database stored in a 'keys' sub-directory of the old client application's home directory, e.g. $HOME/.gaiacli/keys/. For each key material entry, the command will prompt if the key should be skipped or not. If the key is not to be skipped, the passphrase
export extern 'gaiad keys migrate' [
	old_home_dir: string
	--dry-run		# Run migration without actually persisting any changes to the new Keybase
	--help(-h)		# help for migrate
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy
export extern 'gaiad keys mnemonic' [
	--help(-h)		# help for mnemonic
	--unsafe-entropy		# Prompt the user to supply their own entropy, instead of relying on the system
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Convert and print to stdout key addresses and fingerprints from hexadecimal into bech32 cosmos prefixed format and vice versa.
export extern 'gaiad keys parse' [
	hex_or_bech32_address: string
	--help(-h)		# help for parse
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Display keys details. If multiple names or addresses are provided, then an ephemeral multisig key will be created under the name "multi" consisting of all the keys provided by name and multisig threshold.
export extern 'gaiad keys show' [
	--address(-a)		# Output the address only (overrides --output)
	--bech: string@"nu-completions-gaiad--acc-val-cons-"		# The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
	--device(-d)		# Output the address in a ledger device
	--help(-h)		# help for show
	--multisig-threshold: int		# K out of N required signatures (default 1)
	--pubkey(-p)		# Output the public key only (overrides --output)
	--home: string		# The application home directory (default "/Users/user/.gaia")
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Query for account by address
export extern 'gaiad query account' [
	address: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for account by address
export extern 'gaiad query auth account' [
	address: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all the accounts
export extern 'gaiad query auth accounts' [
	--count-total		# count total number of records in all-accounts to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for accounts
	--limit: int		# pagination limit of all-accounts to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all-accounts to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all-accounts to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all-accounts to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current auth parameters: $ <appd> query auth params
export extern 'gaiad query auth params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants for a granter-grantee pair. If msg-type-url is set, it will select grants only for that msg type.
export extern 'gaiad query authz grants' [
	granter_addr: string
	grantee_addr: string
	msg_type_url_: string
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants granted to a grantee.
export extern 'gaiad query authz grants-by-grantee' [
	grantee_addr: string
	--count-total		# count total number of records in grantee-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grantee-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grantee-grants to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grantee-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grantee-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants granted by granter.
export extern 'gaiad query authz grants-by-granter' [
	granter_addr: string
	--count-total		# count total number of records in granter-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of granter-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of granter-grants to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of granter-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of granter-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the total balance of an account or of a specific denomination.
export extern 'gaiad query bank balances' [
	address: string
	--count-total		# count total number of records in all balances to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for balances
	--limit: int		# pagination limit of all balances to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all balances to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all balances to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all balances to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the client metadata for all the registered coin denominations
export extern 'gaiad query bank denom-metadata' [
	--denom: string		# The specific denomination to query client metadata for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-metadata
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query total supply of coins that are held by accounts in the chain.
export extern 'gaiad query bank total' [
	--count-total		# count total number of records in all supply totals to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--limit: int		# pagination limit of all supply totals to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all supply totals to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all supply totals to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all supply totals to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get verified data for a the block at given height
export extern 'gaiad query block' [
	height: string
	--help(-h)		# help for block
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query validator commission rewards from delegators to that validator.
export extern 'gaiad query distribution commission' [
	validator: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for commission
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all coins in the community pool which is under Governance control.
export extern 'gaiad query distribution community-pool' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for community-pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query distribution params
export extern 'gaiad query distribution params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all rewards earned by a delegator, optionally restrict to rewards from a single validator.
export extern 'gaiad query distribution rewards' [
	delegator_addr: string
	validator_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for rewards
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all slashes of a validator for a given block range.
export extern 'gaiad query distribution slashes' [
	validator: string
	start_height: string
	end_height: string
	--count-total		# count total number of records in validator slashes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for slashes
	--limit: int		# pagination limit of validator slashes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator slashes to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator slashes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator slashes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations.
export extern 'gaiad query distribution validator-outstanding-rewards' [
	validator: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator-outstanding-rewards
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for a grant.  You can find the fee-grant of a granter and grantee.
export extern 'gaiad query feegrant grant' [
	granter: string
	grantee: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grant
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Queries all the grants for a grantee address.
export extern 'gaiad query feegrant grants-by-grantee' [
	grantee: string
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Queries all the grants issued for a granter address.
export extern 'gaiad query feegrant grants-by-granter' [
	granter: string
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for a single proposal deposit on a proposal by its identifier.
export extern 'gaiad query gov deposit' [
	proposal_id: string
	depositer_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for all deposits on a proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad query gov deposits' [
	proposal_id: string
	--count-total		# count total number of records in deposits to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--limit: int		# pagination limit of deposits to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of deposits to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of deposits to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of deposits to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the all the parameters for the governance process.
export extern 'gaiad query gov param' [
	param_type: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for param
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the all the parameters for the governance process.
export extern 'gaiad query gov params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for a proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad query gov proposal' [
	proposal_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposal
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for a all paginated proposals that match optional filters:
export extern 'gaiad query gov proposals' [
	--count-total		# count total number of records in proposals to query for
	--depositor: string		# (optional) filter by proposals deposited on by depositor
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposals
	--limit: int		# pagination limit of proposals to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of proposals to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of proposals to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of proposals to query for
	--reverse		# results are sorted in descending order
	--status: string		# (optional) filter proposals by proposal status, status: deposit_period/voting_period/passed/rejected
	--voter: string		# (optional) filter by proposals voted on by voted
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query which address proposed a proposal with a given ID.
export extern 'gaiad query gov proposer' [
	proposal_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposer
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query tally of votes on a proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad query gov tally' [
	proposal_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tally
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for a single vote on a proposal given its identifier.
export extern 'gaiad query gov vote' [
	proposal_id: string
	voter_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for vote
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query vote details for a single proposal by its identifier.
export extern 'gaiad query gov votes' [
	proposal_id: string
	--count-total		# count total number of records in votes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for votes
	--limit: int		# pagination limit of votes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of votes to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of votes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of votes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all channels from a chain
export extern 'gaiad query ibc channel channels' [
	--count-total		# count total number of records in channels to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for channels
	--limit: int		# pagination limit of channels to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the client state associated with a channel, by providing its port and channel identifiers.
export extern 'gaiad query ibc channel client-state' [
	port_id: string
	channel_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for client-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all channels associated with a connection
export extern 'gaiad query ibc channel connections' [
	connection_id: string
	--count-total		# count total number of records in channels associated with a connection to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of channels associated with a connection to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels associated with a connection to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels associated with a connection to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels associated with a connection to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query an IBC channel end from a port and channel identifiers
export extern 'gaiad query ibc channel end' [
	port_id: string
	channel_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the next receive sequence for a given channel
export extern 'gaiad query ibc channel next-sequence-receive' [
	port_id: string
	channel_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for next-sequence-receive
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet acknowledgement
export extern 'gaiad query ibc channel packet-ack' [
	port_id: string
	channel_id: string
	sequence: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-ack
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet commitment
export extern 'gaiad query ibc channel packet-commitment' [
	port_id: string
	channel_id: string
	sequence: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitment
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all packet commitments associated with a channel
export extern 'gaiad query ibc channel packet-commitments' [
	port_id: string
	channel_id: string
	--count-total		# count total number of records in packet commitments associated with a channel to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitments
	--limit: int		# pagination limit of packet commitments associated with a channel to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of packet commitments associated with a channel to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of packet commitments associated with a channel to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of packet commitments associated with a channel to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet receipt
export extern 'gaiad query ibc channel packet-receipt' [
	port_id: string
	channel_id: string
	sequence: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-receipt
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain. The return value represents: - Unreceived packet acknowledgement: packet commitment exists on original sending (executing) chain and ack exists on receiving chain.
export extern 'gaiad query ibc channel unreceived-acks' [
	port_id: string
	channel_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-acks
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Determine if a packet, given a list of packet commitment sequences, is unreceived. The return value represents: - Unreceived packet commitments: no acknowledgement exists on receiving chain for the given packet commitment sequence on sending chain.
export extern 'gaiad query ibc channel unreceived-packets' [
	port_id: string
	channel_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-packets
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the consensus state for a particular light client at a given height. If the '--latest' flag is included, the query returns the latest consensus state, overriding the height argument.
export extern 'gaiad query ibc client consensus-state' [
	client_id: string
	height: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-state
	--latest-height		# return latest stored consensus state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all the consensus states from a given client state.
export extern 'gaiad query ibc client consensus-states' [
	client_id: string
	--count-total		# count total number of records in consensus states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-states
	--limit: int		# pagination limit of consensus states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of consensus states to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of consensus states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of consensus states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the latest Tendermint header of the running chain
export extern 'gaiad query ibc client header' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for header
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc client parameters
export extern 'gaiad query ibc client params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.
export extern 'gaiad query ibc client self-consensus-state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for self-consensus-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored client state
export extern 'gaiad query ibc client state' [
	client_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all available light clients
export extern 'gaiad query ibc client states' [
	--count-total		# count total number of records in client states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for states
	--limit: int		# pagination limit of client states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of client states to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of client states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of client states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query client activity status. Any client without an 'Active' status is considered inactive
export extern 'gaiad query ibc client status' [
	client_id: string
	--help(-h)		# help for status
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all connections ends from a chain
export extern 'gaiad query ibc connection connections' [
	--count-total		# count total number of records in connection ends to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of connection ends to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of connection ends to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of connection ends to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of connection ends to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored connection end
export extern 'gaiad query ibc connection end' [
	connection_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored client connection paths
export extern 'gaiad query ibc connection path' [
	client_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for path
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc-router parameters
export extern 'gaiad query ibc-router params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the denom hash info from a given denom trace
export extern 'gaiad query ibc-transfer denom-hash' [
	trace: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-hash
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the denom trace info from a given trace hash
export extern 'gaiad query ibc-transfer denom-trace' [
	hash: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-trace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the trace info for all token denominations
export extern 'gaiad query ibc-transfer denom-traces' [
	--count-total		# count total number of records in denominations trace to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-traces
	--limit: int		# pagination limit of denominations trace to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of denominations trace to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of denominations trace to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of denominations trace to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the escrow address for a channel
export extern 'gaiad query ibc-transfer escrow-address' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for escrow-address
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc-transfer parameters
export extern 'gaiad query ibc-transfer params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current interchain-accounts controller submodule parameters
export extern 'gaiad query interchain-accounts controller params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the interchain-accounts host submodule packet events for a particular channel and sequence
export extern 'gaiad query interchain-accounts host packet-events' [
	channel_id: string
	sequence: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-events
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current interchain-accounts host submodule parameters
export extern 'gaiad query interchain-accounts host params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details of a liquidity pool batch
export extern 'gaiad query liquidity batch' [
	pool_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for batch
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the deposit messages on the liquidity pool batch for the specified pool-id and msg-index If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed from the beginning of the next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity deposit' [
	pool_id: string
	msg_index: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all deposit messages of the liquidity pool batch on the specified pool If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity deposits' [
	pool_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query values set as liquidity parameters.
export extern 'gaiad query liquidity params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details of a liquidity pool
export extern 'gaiad query liquidity pool' [
	pool_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--pool-coin-denom: string		# The denomination of the pool coin
	--reserve-acc: string		# The Bech32 address of the reserve account
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details about all liquidity pools on a network.
export extern 'gaiad query liquidity pools' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pools
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index If the batch message are normally processed and from the endblock, the resulting state is applied and the messages are removed in the beginning of next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity swap' [
	pool_id: string
	msg_index: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swap
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all swap messages in the liquidity pool batch for the specified pool-id If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity swaps' [
	pool_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swaps
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the withdraw messages in the liquidity pool batch for the specified pool-id and msg-index if the batch message are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity withdraw' [
	pool_id: string
	msg_index: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraw
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all withdraw messages on the liquidity pool batch for the specified pool-id If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block. To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.
export extern 'gaiad query liquidity withdraws' [
	pool_id: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraws
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current minting annual provisions value
export extern 'gaiad query mint annual-provisions' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for annual-provisions
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current minting inflation value
export extern 'gaiad query mint inflation' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for inflation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current minting parameters
export extern 'gaiad query mint params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for raw parameters by subspace and key
export extern 'gaiad query params subspace' [
	subspace: string
	key: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for subspace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query genesis parameters for the slashing module: $ <appd> query slashing params
export extern 'gaiad query slashing params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Use a validators' consensus public key to find the signing-info for that validator: $ <appd> query slashing signing-info '{"@type":"/cosmos.crypto.ed25519.PubKey","key":"OauFcTKbN5Lx3fJL689cikXBqe+hcp6Y+x0rYUdR9Jk="}'
export extern 'gaiad query slashing signing-info' [
	validator_conspub: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# signing infos of validators: $ <appd> query slashing signing-infos
export extern 'gaiad query slashing signing-infos' [
	--count-total		# count total number of records in signing infos to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-infos
	--limit: int		# pagination limit of signing infos to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of signing infos to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of signing infos to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of signing infos to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query delegations for an individual delegator on an individual validator.
export extern 'gaiad query staking delegation' [
	delegator_addr: string
	validator_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query delegations for an individual delegator on all validators.
export extern 'gaiad query staking delegations' [
	delegator_addr: string
	--count-total		# count total number of records in delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations
	--limit: int		# pagination limit of delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of delegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query delegations on an individual validator.
export extern 'gaiad query staking delegations-to' [
	validator_addr: string
	--count-total		# count total number of records in validator delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations-to
	--limit: int		# pagination limit of validator delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator delegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query historical info at given height.
export extern 'gaiad query staking historical-info' [
	height: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for historical-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query values set as staking parameters.
export extern 'gaiad query staking params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query values for amounts stored in the staking pool.
export extern 'gaiad query staking pool' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a redelegation record for an individual delegator between a source and destination validator.
export extern 'gaiad query staking redelegation' [
	delegator_addr: string
	src_validator_addr: string
	dst_validator_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all redelegation records for an individual delegator.
export extern 'gaiad query staking redelegations' [
	delegator_addr: string
	--count-total		# count total number of records in delegator redelegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations
	--limit: int		# pagination limit of delegator redelegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of delegator redelegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of delegator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of delegator redelegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query delegations that are redelegating _from_ a validator.
export extern 'gaiad query staking redelegations-from' [
	validator_addr: string
	--count-total		# count total number of records in validator redelegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations-from
	--limit: int		# pagination limit of validator redelegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator redelegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator redelegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query unbonding delegations for an individual delegator on an individual validator.
export extern 'gaiad query staking unbonding-delegation' [
	delegator_addr: string
	validator_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query unbonding delegations for an individual delegator.
export extern 'gaiad query staking unbonding-delegations' [
	delegator_addr: string
	--count-total		# count total number of records in unbonding delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations
	--limit: int		# pagination limit of unbonding delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of unbonding delegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query delegations that are unbonding _from_ a validator.
export extern 'gaiad query staking unbonding-delegations-from' [
	validator_addr: string
	--count-total		# count total number of records in unbonding delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations-from
	--limit: int		# pagination limit of unbonding delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of unbonding delegations to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details about an individual validator.
export extern 'gaiad query staking validator' [
	validator_addr: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details about all validators on a network.
export extern 'gaiad query staking validators' [
	--count-total		# count total number of records in validators to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validators
	--limit: int		# pagination limit of validators to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validators to query for
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of validators to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validators to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the full tendermint validator set at given height
export extern 'gaiad query tendermint-validator-set' [
	height: string
	--help(-h)		# help for tendermint-validator-set
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--limit: int		# Query number of results returned per page (default 100)
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# 
export extern 'gaiad query tx' [
	hash_acc_seq_signature: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tx
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--type: string		# The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Search for transactions that match the exact given events where results are paginated. Each event takes the form of '{eventType}.{eventAttribute}={value}'. Please refer to each module's documentation for the full set of events to query for. Each module documents its respective events under 'xx_events.md'.
export extern 'gaiad query txs' [
	--events: string		# list of transaction events in the form of {eventType}.{eventAttribute}={value}
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for txs
	--limit: int		# Query number of transactions results per page returned (default 30)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied. This helps a client determine which binary was valid over a given range of blocks, as well as more context to understand past migrations.
export extern 'gaiad query upgrade applied' [
	upgrade_name: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for applied
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Gets a list of module names and their respective consensus versions. Following the command with a specific module name will return only that module's information.
export extern 'gaiad query upgrade module_versions' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for module_versions
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Gets the currently scheduled upgrade plan, if one exists
export extern 'gaiad query upgrade plan' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for plan
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# A state rollback is performed to recover from an incorrect application state transition, when Tendermint has persisted an incorrect app hash and is thus unable to make progress. Rollback overwrites a state at height n with the state at height n - 1. The application also roll back to height n - 1. No blocks are removed, so upon restarting Tendermint the transactions in block n will be re-executed a
export extern 'gaiad rollback' [
	--help(-h)		# help for rollback
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Run the full node application with Tendermint in or out of process. By default, the application will run with Tendermint in process. Pruning options can be provided via the '--pruning' flag or alternatively with '--pruning-keep-recent', 'pruning-keep-every', and 'pruning-interval' together. For '--pruning' the options are as follows: default: the last 100 states are kept in addition to every 500th
export extern 'gaiad start' [
	--abci: string@"nu-completions-gaiad--socket---grpc-"		# specify abci transport (socket | grpc) (default "socket")
	--address: string		# Listen address (default "tcp://0.0.0.0:26658")
	--cpu-profile: string		# Enable CPU profiling and write to the provided file
	--db_backend: string		# database backend: goleveldb | cleveldb | boltdb | rocksdb | badgerdb (default "goleveldb")
	--db_dir: string		# database directory (default "data")
	--fast_sync		# fast blockchain syncing (default true)
	--genesis_hash: string		# optional SHA-256 hash of the genesis file
	--grpc-only		# Start the node in gRPC query only mode (no Tendermint process is started)
	--halt-height: int		# Block height at which to gracefully halt the chain and shutdown the node
	--halt-time: int		# Minimum block time (in Unix seconds) at which to gracefully halt the chain and shutdown the node
	--help(-h)		# help for start
	--inter-block-cache		# Enable inter-block caching (default true)
	--inv-check-period: int		# Assert registered invariants every N blocks
	--min-retain-blocks: int		# Minimum block height offset during ABCI commit to prune Tendermint blocks
	--minimum-gas-prices: string		# Minimum gas prices to accept for transactions; Any fee in a tx must meet this minimum (e.g. 0.01photino;0.0001stake)
	--moniker: string		# node name (default "Pro16.local")
	--priv_validator_laddr: string		# socket address to listen on for connections from external priv_validator process
	--proxy_app: string		# proxy app address, or one of: 'kvstore', 'persistent_kvstore', 'counter', 'e2e' or 'noop' for local testing. (default "tcp://127.0.0.1:26658")
	--pruning: string@"nu-completions-gaiad--default-nothing-everything-custom-"		# Pruning strategy (default|nothing|everything|custom) (default "default")
	--pruning-interval: int		# Height interval at which pruned heights are removed from disk (ignored if pruning is not 'custom')
	--pruning-keep-every: int		# Offset heights to keep on disk after 'keep-every' (ignored if pruning is not 'custom')
	--pruning-keep-recent: int		# Number of recent heights to keep on disk (ignored if pruning is not 'custom')
	--trace-store: string		# Enable KVStore tracing to an output file
	--transport: string		# Transport protocol: socket, grpc (default "socket")
	--unsafe-skip-upgrades: string		# Skip a set of upgrade heights to continue the old binary
	--with-tendermint		# Run abci app embedded in-process with tendermint (default true)
	--x-crisis-skip-assert-invariants		# Skip x/crisis invariants check on startup
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query remote node for status
export extern 'gaiad status' [
	--help(-h)		# help for status
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Remove all the data and WAL
export extern 'gaiad tendermint reset-state' [
	--help(-h)		# help for reset-state
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Shows this node's tendermint validator consensus address
export extern 'gaiad tendermint show-address' [
	--help(-h)		# help for show-address
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Show this node's ID
export extern 'gaiad tendermint show-node-id' [
	--help(-h)		# help for show-node-id
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Show this node's tendermint validator info
export extern 'gaiad tendermint show-validator' [
	--help(-h)		# help for show-validator
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
export extern 'gaiad tendermint unsafe-reset-all' [
	--help(-h)		# help for unsafe-reset-all
	--keep-addr-book		# keep the address book intact
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print protocols' and libraries' version numbers against which this app has been compiled.
export extern 'gaiad tendermint version' [
	--help(-h)		# help for version
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# testnet will create "v" number of directories and populate each with necessary files (private validator, genesis, config, etc.). Note, strict routability for addresses is turned off in the config file.
export extern 'gaiad testnet' [
	--algo: string		# Key signing algorithm to generate keys for (default "secp256k1")
	--chain-id: string		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for testnet
	--keyring-backend: string@"nu-completions-gaiad--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--minimum-gas-prices: string		# Minimum gas prices to accept for transactions; All fees in a tx must meet this minimum (e.g. 0.01photino,0.001stake) (default "0.000006stake")
	--node-daemon-home: string		# Home directory of the node's daemon configuration (default "gaiad")
	--node-dir-prefix: string		# Prefix the directory name for each node with (node results in node0, node1, ...) (default "node")
	--output-dir(-o): string		# Directory to store initialization data for the testnet (default "./mytestnet")
	--starting-ip-address: string		# Starting IP address (192.168.0.1 results in persistent peers list ID0@192.168.0.1:46656, ID1@192.168.0.2:46656, ...) (default "192.168.0.1")
	--v: int		# Number of validators to initialize the testnet with (default 4)
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# execute tx on behalf of granter account:
export extern 'gaiad tx authz exec' [
	msg_tx_json_file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for exec
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# grant authorization to an address to execute a transaction on your behalf:
export extern 'gaiad tx authz grant' [
	grantee: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-validators: string		# Allowed validators addresses separated by ,
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deny-validators: string		# Deny validators addresses separated by ,
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration: int		# The Unix timestamp. Default is one year. (default 1700482346)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--msg-type: string		# The Msg method name for which we are creating a GenericAuthorization
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# SpendLimit for Send Authorization, an array of Coins allowed spend
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# revoke authorization from a granter to a grantee:
export extern 'gaiad tx authz revoke' [
	grantee: string
	msg_type: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Send funds from one account to another. Note, the'--from' flag is ignored as it is implied from [from_key_or_address].
export extern 'gaiad tx bank send' [
	from_key_or_address: string
	to_address: string
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for send
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Broadcast transactions created with the --generate-only flag and signed with the sign command. Read a transaction from [file_path] and broadcast it to a node. If you supply a dash (-) argument in place of an input filename, the command reads from standard input. $ <appd> tx broadcast ./mytxn.json
export extern 'gaiad tx broadcast' [
	file_path: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for broadcast
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit proof that an invariant broken to halt the chain
export extern 'gaiad tx crisis invariant-broken' [
	module_name: string
	invariant_route: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for invariant-broken
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Decode a binary encoded transaction string
export extern 'gaiad tx decode' [
	amino_byte_string: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for decode
	--hex(-x)		# Treat input as hexadecimal instead of base64
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Funds the community pool with the specified amount
export extern 'gaiad tx distribution fund-community-pool' [
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for fund-community-pool
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Set the withdraw address for rewards associated with a delegator address.
export extern 'gaiad tx distribution set-withdraw-addr' [
	withdraw_addr: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-withdraw-addr
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Withdraw all rewards for a single delegator. Note that if you use this command with --broadcast-mode=sync or --broadcast-mode=async, the max-msgs flag will automatically be set to 0.
export extern 'gaiad tx distribution withdraw-all-rewards' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-all-rewards
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--max-msgs: int		# Limit the number of messages per tx (0 for unlimited)
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Withdraw rewards from a given delegation address, and optionally withdraw validator commission if the delegation address given is a validator operator.
export extern 'gaiad tx distribution withdraw-rewards' [
	validator_addr: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission		# Withdraw the validator's commission in addition to the rewards
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-rewards
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Encode transactions created with the --generate-only flag and signed with the sign command. Read a transaction from <file>, serialize it to the Amino wire protocol, and output it as base64. If you supply a dash (-) argument in place of an input filename, the command reads from standard input.
export extern 'gaiad tx encode' [
	file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for encode
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Evidence transaction subcommands
export extern 'gaiad tx evidence' [
	--help(-h)		# help for evidence
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Grant authorization to pay fees from your address. Note, the'--from' flag is 				ignored as it is implied from [granter].
export extern 'gaiad tx feegrant grant' [
	granter_key_or_address: string
	grantee: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-messages: string		# Set of allowed messages for fee allowance
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration: string		# The RFC 3339 timestamp after which the grant expires for the user
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--period: int		# period specifies the time duration in which period_spend_limit coins can be spent before that allowance is reset
	--period-limit: string		# period limit specifies the maximum number of coins that can be spent in the period
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# Spend limit specifies the max limit can be used, if not mentioned there is no limit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# revoke fee grant from a granter to a grantee. Note, the'--from' flag is 			ignored as it is implied from [granter].
export extern 'gaiad tx feegrant revoke' [
	granter: string
	grantee: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a deposit for an active proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad tx gov deposit' [
	proposal_id: string
	deposit: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Cancel a software upgrade along with an initial deposit.
export extern 'gaiad tx gov submit-proposal cancel-software-upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cancel-software-upgrade
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a community pool spend proposal along with an initial deposit. The proposal details must be supplied via a JSON file.
export extern 'gaiad tx gov submit-proposal community-pool-spend' [
	proposal_file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for community-pool-spend
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit an IBC client breaking upgrade proposal along with an initial deposit. The client state specified is the upgraded client state representing the upgraded chain Example Upgraded Client State JSON:  { 	"@type":"/ibc.lightclients.tendermint.v1.ClientState",  	"chain_id":"testchain1", 	"unbonding_period":"1814400s", 	"latest_height":{"revision_number":"0","revision_height":"2"}, 	"proof_specs":[
export extern 'gaiad tx gov submit-proposal ibc-upgrade' [
	name: string
	height: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for ibc-upgrade
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a parameter proposal along with an initial deposit. The proposal details must be supplied via a JSON file. For values that contains objects, only non-empty fields will be updated. IMPORTANT: Currently parameter changes are evaluated but not validated, so it is very important that any "value" change is valid (ie. correct type and within bounds) for its respective parameter, eg. "MaxValidator
export extern 'gaiad tx gov submit-proposal param-change' [
	proposal_file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for param-change
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a software upgrade along with an initial deposit. Please specify a unique name and height for the upgrade to take effect. You may include info to reference a binary download link, in a format compatible with: https://github.com/cosmos/cosmos-sdk/tree/master/cosmovisor
export extern 'gaiad tx gov submit-proposal software-upgrade' [
	name: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for software-upgrade
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--upgrade-height: int		# The height at which the upgrade must happen
	--upgrade-info: string		# Optional info for the planned upgrade such as commit hash, etc.
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit an update IBC client proposal along with an initial deposit. Please specify a subject client identifier you want to update.. Please specify the substitute client the subject client will be updated to.
export extern 'gaiad tx gov submit-proposal update-client' [
	subject_client_id: string
	substitute_client_id: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-client
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a vote for an active proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad tx gov vote' [
	proposal_id: string
	option: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for vote
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a vote for an active proposal. You can find the proposal-id by running "gaiad query gov proposals".
export extern 'gaiad tx gov weighted-vote' [
	proposal_id: string
	weighted_options: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for weighted-vote
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# IBC channel transaction subcommands
export extern 'gaiad tx ibc channel' [
	--help(-h)		# help for channel
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# create a new IBC client with the specified client state and consensus state 	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":f
export extern 'gaiad tx ibc client create' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# submit a client misbehaviour to prevent future updates
export extern 'gaiad tx ibc client misbehaviour' [
	--help(-h)		# help for misbehaviour
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# update existing client with a header
export extern 'gaiad tx ibc client update' [
	client_id: string
	--help(-h)		# help for update
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states 	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwr
export extern 'gaiad tx ibc client upgrade' [
	client_identifier: string
	upgrade_client_proof: string
	upgrade_consensus_state_proof: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for upgrade
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Transfer a fungible token through IBC. Timeouts can be specified as absolute or relative using the "absolute-timeouts" flag. Timeout height can be set by passing in the height string in the form {revision}-{height} using the "packet-timeout-height" flag. Relative timeout height is added to the block height queried from the latest consensus state corresponding to the counterparty channel. Relative 
export extern 'gaiad tx ibc-transfer transfer' [
	src_port: string
	src_channel: string
	receiver: string
	amount: string
	--absolute-timeouts		# Timeout flags are used as absolute timeouts.
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for transfer
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--packet-timeout-height: string		# Packet timeout block height. The timeout is disabled when set to 0-0. (default "0-1000")
	--packet-timeout-timestamp: int		# Packet timeout timestamp in nanoseconds from now. Default is 10 minutes. The timeout is disabled when set to 0. (default 600000000000)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Create liquidity pool and deposit coins.
export extern 'gaiad tx liquidity create-pool' [
	pool_type: string
	deposit_coins: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-pool
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Deposit coins a liquidity pool. This deposit request is not processed immediately since it is accumulated in the liquidity pool batch. All requests in a batch are treated equally and executed at the same swap price.
export extern 'gaiad tx liquidity deposit' [
	pool_id: string
	deposit_coins: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Swap offer coin with demand coin from the liquidity pool with the given order price. This swap request is not processed immediately since it is accumulated in the liquidity pool batch. All requests in a batch are treated equally and executed at the same swap price. The order of swap requests is ignored since the universal swap price is calculated in every batch to prevent front running. The reques
export extern 'gaiad tx liquidity swap' [
	pool_id: string
	swap_type: string
	offer_coin: string
	demand_coin_denom: string
	order_price: string
	swap_fee_rate: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for swap
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Withdraw pool coin from the specified liquidity pool. This swap request is not processed immediately since it is accumulated in the liquidity pool batch. All requests in a batch are treated equally and executed at the same swap price.
export extern 'gaiad tx liquidity withdraw' [
	pool_id: string
	pool_coin: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign transactions created with the --generate-only flag that require multisig signatures. Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the multisig key [name], and attach the key name to the transaction read from [file].
export extern 'gaiad tx multisign' [
	file: string
	name: string
	signature: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Assemble a batch of multisig transactions generated by batch sign command. Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the multisig key [name], and attach the key name to the transaction read from [file].
export extern 'gaiad tx multisign-batch' [
	file: string
	name: string
	signature_file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign-batch
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address of the multisig account that the transaction signs on behalf of
	--no-auto-increment		# disable sequence auto increment
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign a transaction created with the --generate-only flag. It will read a transaction from [file], sign it, and print its JSON encoding. If the --signature-only flag is set, it will output the signature parts only. The --offline flag makes sure that the client will not reach out to full node. As a result, the account and sequence number queries will not be performed and it is required to set such p
export extern 'gaiad tx sign' [
	file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--overwrite		# Overwrite existing signatures with a new one. If disabled, new signature will be appended
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the signatures
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign batch files of transactions generated with --generate-only. The command processes list of transactions from file (one StdTx each line), generate signed transactions or signatures and print their JSON encoding, delimited by '\n'. As the signatures are generated, the command updates the account sequence number accordingly. If the --signature-only flag is set, it will output the signature parts 
export extern 'gaiad tx sign-batch' [
	file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign-batch
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit (default true)
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# unjail a jailed validator: $ <appd> tx slashing unjail --from mykey
export extern 'gaiad tx slashing unjail' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unjail
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# create new validator initialized with a self-delegation to it
export extern 'gaiad tx staking create-validator' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Amount of coins to bond
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-max-change-rate: string		# The maximum commission change rate percentage (per day)
	--commission-max-rate: string		# The maximum commission rate percentage
	--commission-rate: string		# The initial commission rate percentage
	--details: string		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-validator
	--identity: string		# The optional identity signature (ex. UPort or Keybase)
	--ip: string		# The node's public IP. It takes effect only when used in combination with --generate-only
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's name
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id: string		# The node's ID
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--pubkey: string		# The validator's Protobuf JSON encoded public key
	--security-contact: string		# The validator's (optional) security contact email
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Delegate an amount of liquid coins to a validator from your wallet.
export extern 'gaiad tx staking delegate' [
	validator_addr: string
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delegate
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# edit an existing validator account
export extern 'gaiad tx staking edit-validator' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-rate: string		# The new commission rate percentage
	--details: string		# The validator's (optional) details (default "[do-not-modify]")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-validator
	--identity: string		# The (optional) identity signature (ex. UPort or Keybase) (default "[do-not-modify]")
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--new-moniker: string		# The validator's name (default "[do-not-modify]")
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--security-contact: string		# The validator's (optional) security contact email (default "[do-not-modify]")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website (default "[do-not-modify]")
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Redelegate an amount of illiquid staking tokens from one validator to another.
export extern 'gaiad tx staking redelegate' [
	src_validator_addr: string
	dst_validator_addr: string
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for redelegate
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Unbond an amount of bonded shares from a validator.
export extern 'gaiad tx staking unbond' [
	validator_addr: string
	amount: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unbond
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print the addresses that must sign the transaction, those who have already signed it, and make sure that signatures are in the correct order. The command would check whether all required signers have signed the transactions, whether the signatures were collected in the right order, and if the signature is valid over the given transaction. If the --offline flag is also set, signature validation ove
export extern 'gaiad tx validate-signatures' [
	file: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for validate-signatures
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Create a new vesting account funded with an allocation of tokens. The account can either be a delayed or continuous vesting account, which is determined by the '--delayed' flag. All vesting accouts created will have their start time set by the committed block's time. The end_time must be provided as a UNIX epoch timestamp.
export extern 'gaiad tx vesting create-vesting-account' [
	to_address: string
	amount: string
	end_time: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-gaiad--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--delayed		# Create a delayed vesting account if true
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete gaiad _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-vesting-account
	--keyring-backend: string@"nu-completions-gaiad--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-gaiad--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# validates the genesis file at the default location or at the location passed as an arg
export extern 'gaiad validate-genesis' [
	file: string
	--help(-h)		# help for validate-genesis
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print the application binary version information
export extern 'gaiad version' [
	--help(-h)		# help for version
	--long		# Print long version information
	--output(-o): string@"nu-completions-gaiad--text-json-"		# Output format (text|json) (default "text")
	--home: string		# directory for config and data (default "/Users/user/.gaia")
	--log_format: string@"nu-completions-gaiad--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-gaiad--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
