

# neutrond keys in a form of a table
export def "neutrond _keys table" [] {
	neutrond keys list --output json | from json | select name type address 
}

# Helper function to use addresses for completions in --from parameter
export def "nu-complete neutrond _keys values" [] {
    (neutrond _keys table).name | zip (neutrond _keys table).address | flatten
  }

def "nu-completions-neutrond--socket---grpc-" [] { ["socket", "grpc"] }
def "nu-completions-neutrond--os-file-kwallet-pass-test-memory-" [] { ["os", "file", "kwallet", "pass", "test", "memory"] }
def "nu-completions-neutrond--acc-val-cons-" [] { ["acc", "val", "cons"] }
def "nu-completions-neutrond--text-json-" [] { ["text", "json"] }
def "nu-completions-neutrond--sync-async-block-" [] { ["sync", "async", "block"] }
def "nu-completions-neutrond--os-file-test-" [] { ["os", "file", "test"] }
def "nu-completions-neutrond--default-nothing-everything-custom-" [] { ["default", "nothing", "everything", "custom"] }
def "nu-completions-neutrond--json-plain-" [] { ["json", "plain"] }
def "nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-" [] { ["trace", "debug", "info", "warn", "error", "fatal", "panic"] }
def "nu-completions-neutrond--direct-amino-json-" [] { ["direct", "amino-json"] }
def "nu-completions-neutrond--os-file-kwallet-pass-test-" [] { ["os", "file", "kwallet", "pass", "test"] }

# ONLY FOR TESTING PURPOSES! Modifies genesis so that chain can be started locally with one node.
export extern 'neutrond add-consumer-section' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for add-consumer-section
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Add a genesis account to genesis.json. The provided account must specify the account address or key name and a list of initial coins. If a key name is given, the address will be looked up in the local Keybase. The list of initial tokens must contain valid denominations. Accounts may optionally be supplied with vesting parameters.
export extern 'neutrond add-genesis-account' [
	address_or_key_name?: string@"nu-complete neutrond _keys values"
	coin?: string
	coin?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for add-genesis-account
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--vesting-amount: string		# amount of coins for vesting accounts
	--vesting-end-time: int		# schedule end time (unix epoch) for vesting accounts
	--vesting-start-time: int		# schedule start time (unix epoch) for vesting accounts
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Execute a command on a wasm contract
export extern 'neutrond add-wasm-message execute' [
	contract_addr_bech32?: string
	json_encoded_send_args?: string
	--amount: string		# Coins to send to the contract along with command
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for execute
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--run-as: string		# The address that pays the funds.
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Instantiate a wasm contract
export extern 'neutrond add-wasm-message instantiate-contract' [
	code_id_int64?: string
	json_encoded_init_args?: string
	--admin: string		# Address or key name of an admin
	--amount: string		# Coins to send to the contract during instantiation
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for instantiate-contract
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--label: string		# A human-readable name for this contract in lists
	--no-admin		# You must set this explicitly if you don't want an admin
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--run-as: string		# The address that pays the init funds. It is the creator of the contract.
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Lists all codes from genesis code dump and queued messages
export extern 'neutrond add-wasm-message list-codes' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-codes
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Lists all contracts from genesis contract dump and queued messages
export extern 'neutrond add-wasm-message list-contracts' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-contracts
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Upload a wasm binary
export extern 'neutrond add-wasm-message store' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for store
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--instantiate-anyof-addresses: string		# Any of the addresses can instantiate a contract from the code, optional
	--instantiate-everybody: string		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody: string		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address: string		# Only this address can instantiate a contract instance from the code, optional
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--run-as: string		# The address that is stored as code creator
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Collect genesis txs and output a genesis.json file
export extern 'neutrond collect-gentxs' [
	--gentx-dir: string		# override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
	--help(-h)		# help for collect-gentxs
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Create or query an application CLI configuration file
export extern 'neutrond config' [
	key?: string
	value?: string
	--help(-h)		# help for config
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Convert an address between hex encoding and bech32.
export extern 'neutrond debug addr' [
	address?: string@"nu-complete neutrond _keys values"
	--help(-h)		# help for addr
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Generates contract address for the given instance id and code id
export extern 'neutrond debug generate-contract-address' [
	instance_id?: string
	code_id?: string
	--help(-h)		# help for generate-contract-address
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Decode a pubkey from proto JSON and display it's address.
export extern 'neutrond debug pubkey' [
	pubkey?: string
	--help(-h)		# help for pubkey
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Convert raw-bytes to hex.
export extern 'neutrond debug raw-bytes' [
	raw_bytes?: string
	--help(-h)		# help for raw-bytes
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Export state to JSON
export extern 'neutrond export' [
	--for-zero-height		# Export state to start at height zero (perform preproccessing)
	--height: int		# Export state from a particular height (-1 means latest height) (default -1)
	--help(-h)		# help for export
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--jail-allowed-addrs: string		# Comma-separated list of operator addresses of jailed validators to unjail
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Generate a genesis transaction that creates a validator with a self-delegation, that is signed by the key in the Keyring referenced by a given name. A node ID and Bech32 consensus pubkey may optionally be provided. If they are omitted, they will be retrieved from the priv_validator.json file. The following default parameters are included:      	delegation amount:           100000000stake 	commissi
export extern 'neutrond gentx' [
	key_name?: string
	amount?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Amount of coins to bond
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# The network chain ID
	--commission-max-change-rate: string		# The maximum commission change rate percentage (per day)
	--commission-max-rate: string		# The maximum commission rate percentage
	--commission-rate: string		# The initial commission rate percentage
	--details: string		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for gentx
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--identity: string		# The (optional) identity signature (ex. UPort or Keybase)
	--ip: string		# The node's public IP (default "192.168.1.8")
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's (optional) moniker
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id: string		# The node's NodeID
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# Write the genesis transaction JSON document to the given file instead of the default location
	--pubkey: string		# The validator's Protobuf JSON encoded public key
	--security-contact: string		# The validator's (optional) security contact email
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Help provides help for any command in the application. Simply type neutrond help [path to command] for full details.
export extern 'neutrond help' [
	command?: string
	--help(-h)		# help for help
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Initialize validators's and node's configuration files.
export extern 'neutrond init' [
	moniker?: string
	--chain-id: string		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for init
	--home: string		# node's home directory (default "/Users/user/.neutrond")
	--overwrite(-o)		# overwrite the genesis.json file
	--recover		# provide seed phrase to recover existing key instead of creating
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Derive a new private key and encrypt to disk. Optionally specify a BIP39 mnemonic, a BIP39 passphrase to further secure the mnemonic, and a bip32 HD path to derive a specific account. The key will be stored under the given name and encrypted with the given password. The only input that is required is the encryption password. If run with -i, it will prompt the user for BIP44 path, BIP39 mnemonic, a
export extern 'neutrond keys add' [
	name?: string
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
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Delete keys from the Keybase backend. Note that removing offline or ledger keys will remove only the public key references stored locally, i.e. private keys stored in a ledger device cannot be deleted with the CLI.
export extern 'neutrond keys delete' [
	name?: string
	--force(-f)		# Remove the key unconditionally without asking for the passphrase. Deprecated.
	--help(-h)		# help for delete
	--yes(-y)		# Skip confirmation prompt when deleting offline or ledger key references
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Export a private key from the local keyring in ASCII-armored encrypted format. When both the --unarmored-hex and --unsafe flags are selected, cryptographic private key material is exported in an INSECURE fashion that is designed to allow users to import their keys in hot wallets. This feature is for advanced users only that are confident about how to handle private keys work and are FULLY AWARE OF
export extern 'neutrond keys export' [
	name?: string
	--help(-h)		# help for export
	--unarmored-hex		# Export unarmored hex privkey. Requires --unsafe.
	--unsafe		# Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Import a ASCII armored private key into the local keybase.
export extern 'neutrond keys import' [
	name?: string
	keyfile?: string
	--help(-h)		# help for import
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Return a list of all public keys stored by this key manager along with their associated name and address.
export extern 'neutrond keys list' [
	--help(-h)		# help for list
	--list-names(-n)		# List names only
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring. The legacy Keybase used to persist keys in a LevelDB database stored in a 'keys' sub-directory of the old client application's home directory, e.g. $HOME/.gaiacli/keys/. For each key material entry, the command will prompt if the key should be skipped or not. If the key is not to be skipped, the passphrase
export extern 'neutrond keys migrate' [
	old_home_dir?: string
	--dry-run		# Run migration without actually persisting any changes to the new Keybase
	--help(-h)		# help for migrate
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy
export extern 'neutrond keys mnemonic' [
	--help(-h)		# help for mnemonic
	--unsafe-entropy		# Prompt the user to supply their own entropy, instead of relying on the system
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Convert and print to stdout key addresses and fingerprints from hexadecimal into bech32 cosmos prefixed format and vice versa.
export extern 'neutrond keys parse' [
	hex_or_bech32_address?: string
	--help(-h)		# help for parse
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Display keys details. If multiple names or addresses are provided, then an ephemeral multisig key will be created under the name "multi" consisting of all the keys provided by name and multisig threshold.
export extern 'neutrond keys show' [
	--address(-a)		# Output the address only (overrides --output)
	--bech: string@"nu-completions-neutrond--acc-val-cons-"		# The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
	--device(-d)		# Output the address in a ledger device
	--help(-h)		# help for show
	--multisig-threshold: int		# K out of N required signatures (default 1)
	--pubkey(-p)		# Output the public key only (overrides --output)
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--keyring-backend: string@"nu-completions-neutrond--os-file-test-"		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]

# Query for account by address
export extern 'neutrond query account' [
	address?: string@"nu-complete neutrond _keys values"
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query admins
export extern 'neutrond query adminmodule admins' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for admins
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query archived proposals
export extern 'neutrond query adminmodule archivedproposals' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for archivedproposals
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for account by address
export extern 'neutrond query auth account' [
	address?: string@"nu-complete neutrond _keys values"
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all the accounts
export extern 'neutrond query auth accounts' [
	--count-total		# count total number of records in all-accounts to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for accounts
	--limit: int		# pagination limit of all-accounts to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all-accounts to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all-accounts to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all-accounts to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query module account info by module name
export extern 'neutrond query auth module-account' [
	module_name?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for module-account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current auth parameters: $ <appd> query auth params
export extern 'neutrond query auth params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants for a granter-grantee pair. If msg-type-url is set, it will select grants only for that msg type.
export extern 'neutrond query authz grants' [
	granter_addr?: string@"nu-complete neutrond _keys values"
	grantee_addr?: string@"nu-complete neutrond _keys values"
	msg_type_url_?: string
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants granted to a grantee.
export extern 'neutrond query authz grants-by-grantee' [
	grantee_addr?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in grantee-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grantee-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grantee-grants to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grantee-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grantee-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query authorization grants granted by granter.
export extern 'neutrond query authz grants-by-granter' [
	granter_addr?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in granter-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of granter-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of granter-grants to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of granter-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of granter-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the total balance of an account or of a specific denomination.
export extern 'neutrond query bank balances' [
	address?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in all balances to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for balances
	--limit: int		# pagination limit of all balances to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all balances to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all balances to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all balances to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the client metadata for all the registered coin denominations
export extern 'neutrond query bank denom-metadata' [
	--denom: string		# The specific denomination to query client metadata for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-metadata
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query total supply of coins that are held by accounts in the chain.
export extern 'neutrond query bank total' [
	--count-total		# count total number of records in all supply totals to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--limit: int		# pagination limit of all supply totals to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all supply totals to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of all supply totals to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all supply totals to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get verified data for a the block at given height
export extern 'neutrond query block' [
	height?: string
	--help(-h)		# help for block
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query next fee distribution data
export extern 'neutrond query ccvconsumer next-fee-distribution' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for next-fee-distribution
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows all failures or failures from specific contract address
export extern 'neutrond query contractmanager failures' [
	address?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in failures [address] to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for failures
	--limit: int		# pagination limit of failures [address] to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of failures [address] to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of failures [address] to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of failures [address] to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query contractmanager params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# list all schedule
export extern 'neutrond query cron list-schedule' [
	--count-total		# count total number of records in list-schedule to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-schedule
	--limit: int		# pagination limit of list-schedule to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list-schedule to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of list-schedule to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list-schedule to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query cron params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows a schedule
export extern 'neutrond query cron show-schedule' [
	name?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for show-schedule
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query feeburner params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows total amount of burned neutrons
export extern 'neutrond query feeburner total-burned-neutrons-amount' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total-burned-neutrons-amount
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query details for a grant.  You can find the fee-grant of a granter and grantee.
export extern 'neutrond query feegrant grant' [
	granter?: string@"nu-complete neutrond _keys values"
	grantee?: string@"nu-complete neutrond _keys values"
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grant
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Queries all the grants for a grantee address.
export extern 'neutrond query feegrant grants-by-grantee' [
	grantee?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Queries all the grants issued for a granter address.
export extern 'neutrond query feegrant grants-by-granter' [
	granter?: string@"nu-complete neutrond _keys values"
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# queries fee info by port id, channel id and sequence
export extern 'neutrond query feerefunder fee-info' [
	port_id?: string
	channel_id?: string
	sequence?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for fee-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query feerefunder params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all channels from a chain
export extern 'neutrond query ibc channel channels' [
	--count-total		# count total number of records in channels to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for channels
	--limit: int		# pagination limit of channels to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the client state associated with a channel, by providing its port and channel identifiers.
export extern 'neutrond query ibc channel client-state' [
	port_id?: string
	channel_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for client-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all channels associated with a connection
export extern 'neutrond query ibc channel connections' [
	connection_id?: string
	--count-total		# count total number of records in channels associated with a connection to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of channels associated with a connection to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels associated with a connection to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels associated with a connection to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels associated with a connection to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query an IBC channel end from a port and channel identifiers
export extern 'neutrond query ibc channel end' [
	port_id?: string
	channel_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the next receive sequence for a given channel
export extern 'neutrond query ibc channel next-sequence-receive' [
	port_id?: string
	channel_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for next-sequence-receive
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet acknowledgement
export extern 'neutrond query ibc channel packet-ack' [
	port_id?: string
	channel_id?: string
	sequence?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-ack
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet commitment
export extern 'neutrond query ibc channel packet-commitment' [
	port_id?: string
	channel_id?: string
	sequence?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitment
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all packet commitments associated with a channel
export extern 'neutrond query ibc channel packet-commitments' [
	port_id?: string
	channel_id?: string
	--count-total		# count total number of records in packet commitments associated with a channel to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitments
	--limit: int		# pagination limit of packet commitments associated with a channel to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of packet commitments associated with a channel to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of packet commitments associated with a channel to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of packet commitments associated with a channel to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query a packet receipt
export extern 'neutrond query ibc channel packet-receipt' [
	port_id?: string
	channel_id?: string
	sequence?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-receipt
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain. The return value represents: - Unreceived packet acknowledgement: packet commitment exists on original sending (executing) chain and ack exists on receiving chain.
export extern 'neutrond query ibc channel unreceived-acks' [
	port_id?: string
	channel_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-acks
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Determine if a packet, given a list of packet commitment sequences, is unreceived. The return value represents: - Unreceived packet commitments: no acknowledgement exists on receiving chain for the given packet commitment sequence on sending chain.
export extern 'neutrond query ibc channel unreceived-packets' [
	port_id?: string
	channel_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-packets
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the consensus state for a particular light client at a given height. If the '--latest' flag is included, the query returns the latest consensus state, overriding the height argument.
export extern 'neutrond query ibc client consensus-state' [
	client_id?: string
	height?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-state
	--latest-height		# return latest stored consensus state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the heights of all consensus states associated with the provided client ID.
export extern 'neutrond query ibc client consensus-state-heights' [
	client_id?: string
	--count-total		# count total number of records in consensus state heights to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-state-heights
	--limit: int		# pagination limit of consensus state heights to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of consensus state heights to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of consensus state heights to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of consensus state heights to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all the consensus states from a given client state.
export extern 'neutrond query ibc client consensus-states' [
	client_id?: string
	--count-total		# count total number of records in consensus states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-states
	--limit: int		# pagination limit of consensus states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of consensus states to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of consensus states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of consensus states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the latest Tendermint header of the running chain
export extern 'neutrond query ibc client header' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for header
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc client parameters
export extern 'neutrond query ibc client params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.
export extern 'neutrond query ibc client self-consensus-state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for self-consensus-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored client state
export extern 'neutrond query ibc client state' [
	client_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all available light clients
export extern 'neutrond query ibc client states' [
	--count-total		# count total number of records in client states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for states
	--limit: int		# pagination limit of client states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of client states to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of client states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of client states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query client activity status. Any client without an 'Active' status is considered inactive
export extern 'neutrond query ibc client status' [
	client_id?: string
	--help(-h)		# help for status
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query all connections ends from a chain
export extern 'neutrond query ibc connection connections' [
	--count-total		# count total number of records in connection ends to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of connection ends to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of connection ends to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of connection ends to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of connection ends to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored connection end
export extern 'neutrond query ibc connection end' [
	connection_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query stored client connection paths
export extern 'neutrond query ibc connection path' [
	client_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for path
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc-router parameters
export extern 'neutrond query ibc-router params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the denom hash info from a given denom trace
export extern 'neutrond query ibc-transfer denom-hash' [
	trace?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-hash
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the denom trace info from a given trace hash or ibc denom
export extern 'neutrond query ibc-transfer denom-trace' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-trace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the trace info for all token denominations
export extern 'neutrond query ibc-transfer denom-traces' [
	--count-total		# count total number of records in denominations trace to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-traces
	--limit: int		# pagination limit of denominations trace to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of denominations trace to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of denominations trace to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of denominations trace to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the escrow address for a channel
export extern 'neutrond query ibc-transfer escrow-address' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for escrow-address
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current ibc-transfer parameters
export extern 'neutrond query ibc-transfer params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Generate the local address for a wasm hooks sender.
export extern 'neutrond query ibchooks wasm-sender' [
	channelID?: string
	originalSender?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for wasm-sender
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the controller submodule for the interchain account address for a given owner on a particular connection
export extern 'neutrond query interchain-accounts controller interchain-account' [
	owner?: string
	connection_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for interchain-account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current interchain-accounts controller submodule parameters
export extern 'neutrond query interchain-accounts controller params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the interchain-accounts host submodule packet events for a particular channel and sequence
export extern 'neutrond query interchain-accounts host packet-events' [
	channel_id?: string
	sequence?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-events
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current interchain-accounts host submodule parameters
export extern 'neutrond query interchain-accounts host params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query interchainqueries params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# queries last remote height by connection id
export extern 'neutrond query interchainqueries query-last-remote-height' [
	connection_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for query-last-remote-height
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# queries result for registered query
export extern 'neutrond query interchainqueries query-result' [
	query_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for query-result
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# queries all the interchain queries in the module
export extern 'neutrond query interchainqueries registered-queries' [
	--connection_id: string		# (optional) filter by connection id
	--count-total		# count total number of records in registered queries to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for registered-queries
	--limit: int		# pagination limit of registered queries to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of registered queries to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--owners: string		# Array     (optional) filter by query owners
	--page: int		# pagination page of registered queries to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of registered queries to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# queries all the interchain queries in the module
export extern 'neutrond query interchainqueries registered-query' [
	id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for registered-query
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# get the interchain account address for a specific combination of owner-address, connection-id and interchain-account-id
export extern 'neutrond query interchaintxs interchain-account' [
	owner_address?: string
	connection_id?: string
	interchain_account_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for interchain-account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# shows the parameters of the module
export extern 'neutrond query interchaintxs params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query for raw parameters by subspace and key
export extern 'neutrond query params subspace' [
	subspace?: string
	key?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for subspace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query genesis parameters for the slashing module: $ <appd> query slashing params
export extern 'neutrond query slashing params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Use a validators' consensus public key to find the signing-info for that validator: $ <appd> query slashing signing-info '{"@type":"/cosmos.crypto.ed25519.PubKey","key":"OauFcTKbN5Lx3fJL689cikXBqe+hcp6Y+x0rYUdR9Jk="}'
export extern 'neutrond query slashing signing-info' [
	validator_conspub?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# signing infos of validators: $ <appd> query slashing signing-infos
export extern 'neutrond query slashing signing-infos' [
	--count-total		# count total number of records in signing infos to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-infos
	--limit: int		# pagination limit of signing infos to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of signing infos to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of signing infos to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of signing infos to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the full tendermint validator set at given height
export extern 'neutrond query tendermint-validator-set' [
	height?: string
	--help(-h)		# help for tendermint-validator-set
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-"		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--limit: int		# Query number of results returned per page (default 100)
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the authority metadata for a specific denom
export extern 'neutrond query tokenfactory denom-authority-metadata' [
	denom?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-authority-metadata
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Returns a list of all tokens created by a specific creator address
export extern 'neutrond query tokenfactory denoms-from-creator' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denoms-from-creator
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get the params for the x/tokenfactory module
export extern 'neutrond query tokenfactory params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# 
export extern 'neutrond query tx' [
	hash_acc_seq_signature?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tx
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--type: string		# The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Search for transactions that match the exact given events where results are paginated. Each event takes the form of '{eventType}.{eventAttribute}={value}'. Please refer to each module's documentation for the full set of events to query for. Each module documents its respective events under 'xx_events.md'.
export extern 'neutrond query txs' [
	--events: string		# list of transaction events in the form of {eventType}.{eventAttribute}={value}
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for txs
	--limit: int		# Query number of transactions results per page returned (default 30)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied. This helps a client determine which binary was valid over a given range of blocks, as well as more context to understand past migrations.
export extern 'neutrond query upgrade applied' [
	upgrade_name?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for applied
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Gets the currently scheduled upgrade plan, if one exists
export extern 'neutrond query upgrade plan' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for plan
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# build contract address
export extern 'neutrond query wasm build-address' [
	code_hash?: string
	creator_address?: string
	salt_hex_encoded?: string
	--ascii		# ascii encoded salt
	--b64		# base64 encoded salt
	--help(-h)		# help for build-address
	--hex		# hex encoded salt
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Downloads wasm bytecode for given code id
export extern 'neutrond query wasm code' [
	code_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Prints out metadata of a code id
export extern 'neutrond query wasm code-info' [
	code_id?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Prints out metadata of a contract given its address
export extern 'neutrond query wasm contract' [
	bech32_address?: string
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Prints out the code history for a contract given its address
export extern 'neutrond query wasm contract-history' [
	bech32_address?: string
	--count-total		# count total number of records in contract history to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract-history
	--limit: int		# pagination limit of contract history to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of contract history to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of contract history to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of contract history to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Prints out all internal state of a contract given its address
export extern 'neutrond query wasm contract-state all' [
	bech32_address?: string
	--count-total		# count total number of records in contract state to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for all
	--limit: int		# pagination limit of contract state to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of contract state to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of contract state to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of contract state to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Prints out internal state for of a contract given its address
export extern 'neutrond query wasm contract-state raw' [
	bech32_address?: string
	key?: string
	--ascii		# ascii encoded key argument
	--b64		# base64 encoded key argument
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for raw
	--hex		# hex encoded key argument
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Calls contract with given address with query data and prints the returned result
export extern 'neutrond query wasm contract-state smart' [
	bech32_address?: string
	query?: string
	--ascii		# ascii encoded query argument
	--b64		# base64 encoded query argument
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for smart
	--hex		# hex encoded query argument
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Get libwasmvm version
export extern 'neutrond query wasm libwasmvm-version' [
	--help(-h)		# help for libwasmvm-version
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# List all wasm bytecode on the chain
export extern 'neutrond query wasm list-code' [
	--count-total		# count total number of records in list codes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-code
	--limit: int		# pagination limit of list codes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list codes to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# List wasm all bytecode on the chain for given code id
export extern 'neutrond query wasm list-contract-by-code' [
	code_id?: string
	--count-total		# count total number of records in list contracts by code to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-contract-by-code
	--limit: int		# pagination limit of list contracts by code to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list contracts by code to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of list contracts by code to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list contracts by code to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# List all contracts by creator
export extern 'neutrond query wasm list-contracts-by-creator' [
	creator?: string
	--count-total		# count total number of records in list contracts by creator to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-contracts-by-creator
	--limit: int		# pagination limit of list contracts by creator to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list contracts by creator to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of list contracts by creator to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list contracts by creator to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Query the current wasm parameters
export extern 'neutrond query wasm params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# List all pinned code ids
export extern 'neutrond query wasm pinned' [
	--count-total		# count total number of records in list codes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pinned
	--limit: int		# pagination limit of list codes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list codes to query for
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--page: int		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# A state rollback is performed to recover from an incorrect application state transition, when Tendermint has persisted an incorrect app hash and is thus unable to make progress. Rollback overwrites a state at height n with the state at height n - 1. The application also roll back to height n - 1. No blocks are removed, so upon restarting Tendermint the transactions in block n will be re-executed a
export extern 'neutrond rollback' [
	--help(-h)		# help for rollback
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Run the full node application with Tendermint in or out of process. By default, the application will run with Tendermint in process. Pruning options can be provided via the '--pruning' flag or alternatively with '--pruning-keep-recent', 'pruning-keep-every', and 'pruning-interval' together. For '--pruning' the options are as follows: default: the last 100 states are kept in addition to every 500th
export extern 'neutrond start' [
	--abci: string@"nu-completions-neutrond--socket---grpc-"		# specify abci transport (socket | grpc) (default "socket")
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
	--home: string		# The application home directory (default "/Users/user/.neutrond")
	--iavl-disable-fastnode		# Disable fast node for IAVL tree (default true)
	--inter-block-cache		# Enable inter-block caching (default true)
	--inv-check-period: int		# Assert registered invariants every N blocks
	--min-retain-blocks: int		# Minimum block height offset during ABCI commit to prune Tendermint blocks
	--minimum-gas-prices: string		# Minimum gas prices to accept for transactions; Any fee in a tx must meet this minimum (e.g. 0.01photino;0.0001stake)
	--moniker: string		# node name (default "Pro16.local")
	--priv_validator_laddr: string		# socket address to listen on for connections from external priv_validator process
	--proxy_app: string		# proxy app address, or one of: 'kvstore', 'persistent_kvstore', 'counter', 'e2e' or 'noop' for local testing. (default "tcp://127.0.0.1:26658")
	--pruning: string@"nu-completions-neutrond--default-nothing-everything-custom-"		# Pruning strategy (default|nothing|everything|custom) (default "default")
	--pruning-interval: int		# Height interval at which pruned heights are removed from disk (ignored if pruning is not 'custom')
	--pruning-keep-every: int		# Offset heights to keep on disk after 'keep-every' (ignored if pruning is not 'custom')
	--pruning-keep-recent: int		# Number of recent heights to keep on disk (ignored if pruning is not 'custom')
	--trace		# Provide full stack traces for errors in ABCI Log
	--trace-store: string		# Enable KVStore tracing to an output file
	--transport: string		# Transport protocol: socket, grpc (default "socket")
	--unsafe-skip-upgrades: string		# Skip a set of upgrade heights to continue the old binary
	--with-tendermint		# Run abci app embedded in-process with tendermint (default true)
	--x-crisis-skip-assert-invariants		# Skip x/crisis invariants check on startup
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
]

# Query remote node for status
export extern 'neutrond status' [
	--help(-h)		# help for status
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Remove all the data and WAL
export extern 'neutrond tendermint reset-state' [
	--help(-h)		# help for reset-state
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Shows this node's tendermint validator consensus address
export extern 'neutrond tendermint show-address' [
	--help(-h)		# help for show-address
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Show this node's ID
export extern 'neutrond tendermint show-node-id' [
	--help(-h)		# help for show-node-id
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Show this node's tendermint validator info
export extern 'neutrond tendermint show-validator' [
	--help(-h)		# help for show-validator
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
export extern 'neutrond tendermint unsafe-reset-all' [
	--help(-h)		# help for unsafe-reset-all
	--keep-addr-book		# keep the address book intact
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print protocols' and libraries' version numbers against which this app has been compiled.
export extern 'neutrond tendermint version' [
	--help(-h)		# help for version
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Broadcast message AddAdmin
export extern 'neutrond tx adminmodule add-admin' [
	admin?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for add-admin
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Broadcast message DeleteAdmin
export extern 'neutrond tx adminmodule delete-admin' [
	admin?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delete-admin
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Cancel a software upgrade.
export extern 'neutrond tx adminmodule submit-proposal cancel-software-upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cancel-software-upgrade
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a parameter proposal . The proposal details must be supplied via a JSON file. For values that contains objects, only non-empty fields will be updated. IMPORTANT: Currently parameter changes are evaluated but not validated, so it is very important that any "value" change is valid (ie. correct type and within bounds) for its respective parameter, eg. "MaxValidators" should be an integer and n
export extern 'neutrond tx adminmodule submit-proposal param-change' [
	proposal_file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for param-change
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit a software upgrade. Please specify a unique name and height OR time for the upgrade to take effect. You may include info to reference a binary download link, in a format compatible with: https://github.com/cosmos/cosmos-sdk/tree/master/cosmovisor
export extern 'neutrond tx adminmodule submit-proposal software-upgrade' [
	name?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for software-upgrade
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--upgrade-height: int		# The height at which the upgrade must happen (not to be used together with --upgrade-time)
	--upgrade-info: string		# Optional info for the planned upgrade such as commit hash, etc.
	--upgrade-time: string		# The time at which the upgrade must happen (ex. 2006-01-02T15:04:05Z) (not to be used together with --upgrade-height)
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# execute tx on behalf of granter account:
export extern 'neutrond tx authz exec' [
	msg_tx_json_file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for exec
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# grant authorization to an address to execute a transaction on your behalf:
export extern 'neutrond tx authz grant' [
	grantee?: string@"nu-complete neutrond _keys values"
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-validators: string		# Allowed validators addresses separated by ,
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deny-validators: string		# Deny validators addresses separated by ,
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--expiration: int		# The Unix timestamp. Default is one year. (default 1728223110)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--msg-type: string		# The Msg method name for which we are creating a GenericAuthorization
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# SpendLimit for Send Authorization, an array of Coins allowed spend
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# revoke authorization from a granter to a grantee:
export extern 'neutrond tx authz revoke' [
	grantee?: string@"nu-complete neutrond _keys values"
	msg_type?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Send funds from one account to another.  		Note, the'--from' flag is ignored as it is implied from [from_key_or_address]. 		When using '--dry-run' a key name cannot be used, only a bech32 address.
export extern 'neutrond tx bank send' [
	from_key_or_address?: string@"nu-complete neutrond _keys values"
	to_address?: string@"nu-complete neutrond _keys values"
	amount?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for send
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Broadcast transactions created with the --generate-only flag and signed with the sign command. Read a transaction from [file_path] and broadcast it to a node. If you supply a dash (-) argument in place of an input filename, the command reads from standard input. $ <appd> tx broadcast ./mytxn.json
export extern 'neutrond tx broadcast' [
	file_path?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for broadcast
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit proof that an invariant broken to halt the chain
export extern 'neutrond tx crisis invariant-broken' [
	module_name?: string
	invariant_route?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for invariant-broken
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# cron transactions subcommands
export extern 'neutrond tx cron' [
	--help(-h)		# help for cron
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Decode a binary encoded transaction string
export extern 'neutrond tx decode' [
	amino_byte_string?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for decode
	--hex(-x)		# Treat input as hexadecimal instead of base64
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Encode transactions created with the --generate-only flag and signed with the sign command. Read a transaction from <file>, serialize it to the Amino wire protocol, and output it as base64. If you supply a dash (-) argument in place of an input filename, the command reads from standard input.
export extern 'neutrond tx encode' [
	file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for encode
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Evidence transaction subcommands
export extern 'neutrond tx evidence' [
	--help(-h)		# help for evidence
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Grant authorization to pay fees from your address. Note, the'--from' flag is 				ignored as it is implied from [granter].
export extern 'neutrond tx feegrant grant' [
	granter_key_or_address?: string@"nu-complete neutrond _keys values"
	grantee?: string@"nu-complete neutrond _keys values"
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-messages: string		# Set of allowed messages for fee allowance
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--expiration: string		# The RFC 3339 timestamp after which the grant expires for the user
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--period: int		# period specifies the time duration in which period_spend_limit coins can be spent before that allowance is reset
	--period-limit: string		# period limit specifies the maximum number of coins that can be spent in the period
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# Spend limit specifies the max limit can be used, if not mentioned there is no limit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# revoke fee grant from a granter to a grantee. Note, the'--from' flag is 			ignored as it is implied from [granter].
export extern 'neutrond tx feegrant revoke' [
	granter?: string@"nu-complete neutrond _keys values"
	grantee?: string@"nu-complete neutrond _keys values"
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# IBC channel transaction subcommands
export extern 'neutrond tx ibc channel' [
	--help(-h)		# help for channel
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# create a new IBC client with the specified client state and consensus state 	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":f
export extern 'neutrond tx ibc client create' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# submit a client misbehaviour to prevent future updates
export extern 'neutrond tx ibc client misbehaviour' [
	--help(-h)		# help for misbehaviour
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# update existing client with a header
export extern 'neutrond tx ibc client update' [
	client_id?: string
	--help(-h)		# help for update
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states 	- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwr
export extern 'neutrond tx ibc client upgrade' [
	client_identifier?: string
	upgrade_client_proof?: string
	upgrade_consensus_state_proof?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for upgrade
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Transfer a fungible token through IBC. Timeouts can be specified as absolute or relative using the "absolute-timeouts" flag. Timeout height can be set by passing in the height string in the form {revision}-{height} using the "packet-timeout-height" flag. Relative timeout height is added to the block height queried from the latest consensus state corresponding to the counterparty channel. Relative 
export extern 'neutrond tx ibc-transfer transfer' [
	src_port?: string
	src_channel?: string
	receiver?: string
	amount?: string
	--absolute-timeouts		# Timeout flags are used as absolute timeouts.
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for transfer
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--memo: string		# Memo to be sent along with the packet.
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--packet-timeout-height: string		# Packet timeout block height. The timeout is disabled when set to 0-0. (default "0-1000")
	--packet-timeout-timestamp: int		# Packet timeout timestamp in nanoseconds from now. Default is 10 minutes. The timeout is disabled when set to 0. (default 600000000000)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Remove interchain query
export extern 'neutrond tx interchainqueries remove-interchain-query' [
	query_id?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for remove-interchain-query
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Submit query result
export extern 'neutrond tx interchainqueries submit-query-result' [
	query_id?: string
	result_file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for submit-query-result
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# interchaintxs transactions subcommands
export extern 'neutrond tx interchaintxs' [
	--help(-h)		# help for interchaintxs
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign transactions created with the --generate-only flag that require multisig signatures. Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the multisig key [name], and attach the key name to the transaction read from [file].
export extern 'neutrond tx multisign' [
	file?: string
	name?: string
	signature?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# network chain ID
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Assemble a batch of multisig transactions generated by batch sign command. Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the multisig key [name], and attach the key name to the transaction read from [file].
export extern 'neutrond tx multisign-batch' [
	file?: string
	name?: string
	signature_file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign-batch
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address of the multisig account that the transaction signs on behalf of
	--no-auto-increment		# disable sequence auto increment
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign a transaction created with the --generate-only flag. It will read a transaction from [file], sign it, and print its JSON encoding. If the --signature-only flag is set, it will output the signature parts only. The --offline flag makes sure that the client will not reach out to full node. As a result, the account and sequence number queries will not be performed and it is required to set such p
export extern 'neutrond tx sign' [
	file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# The network chain ID
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--overwrite		# Overwrite existing signatures with a new one. If disabled, new signature will be appended
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the signatures
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Sign batch files of transactions generated with --generate-only. The command processes list of transactions from file (one StdTx each line), generate signed transactions or signatures and print their JSON encoding, delimited by '\n'. As the signatures are generated, the command updates the account sequence number accordingly. If the --signature-only flag is set, it will output the signature parts 
export extern 'neutrond tx sign-batch' [
	file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# network chain ID
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign-batch
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit (default true)
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# unjail a jailed validator: $ <appd> tx slashing unjail --from mykey
export extern 'neutrond tx slashing unjail' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unjail
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Burn tokens from an address. Must have admin authority to do so.
export extern 'neutrond tx tokenfactory burn' [
	amount?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for burn
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Changes the admin address for a factory-created denom. Must have admin authority to do so.
export extern 'neutrond tx tokenfactory change-admin' [
	denom?: string
	new_admin_address?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for change-admin
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# create a new denom from an account
export extern 'neutrond tx tokenfactory create-denom' [
	subdenom?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-denom
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Mint a denom to an address. Must have admin authority to do so.
export extern 'neutrond tx tokenfactory mint' [
	amount?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for mint
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print the addresses that must sign the transaction, those who have already signed it, and make sure that signatures are in the correct order. The command would check whether all required signers have signed the transactions, whether the signatures were collected in the right order, and if the signature is valid over the given transaction. If the --offline flag is also set, signature validation ove
export extern 'neutrond tx validate-signatures' [
	file?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# The network chain ID
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for validate-signatures
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Create a new vesting account funded with an allocation of tokens. The account can either be a delayed or continuous vesting account, which is determined by the '--delayed' flag. All vesting accouts created will have their start time set by the committed block's time. The end_time must be provided as a UNIX epoch timestamp.
export extern 'neutrond tx vesting create-vesting-account' [
	to_address?: string@"nu-complete neutrond _keys values"
	amount?: string
	end_time?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--delayed		# Create a delayed vesting account if true
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-vesting-account
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Clears admin for a contract to prevent further migrations
export extern 'neutrond tx wasm clear-contract-admin' [
	contract_addr_bech32?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for clear-contract-admin
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Execute a command on a wasm contract
export extern 'neutrond tx wasm execute' [
	contract_addr_bech32?: string
	json_encoded_send_args?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Coins to send to the contract along with command
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for execute
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Grant authorization to an address.
export extern 'neutrond tx wasm grant' [
	grantee?: string@"nu-complete neutrond _keys values"
	contract_addr_bech32?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allow-all-messages		# Allow all messages
	--allow-msg-keys: string		# Allowed msg keys
	--allow-raw-msgs: string		# Allowed raw msgs
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--expiration: int		# The Unix timestamp.
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--max-calls: int		# Maximal number of calls to the contract
	--max-funds: string		# Maximal amount of tokens transferable to the contract.
	--no-token-transfer		# Don't allow token transfer
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Creates a new instance of an uploaded wasm code with the given 'constructor' message. Each contract instance has a unique address assigned.
export extern 'neutrond tx wasm instantiate' [
	code_id_int64?: string
	json_encoded_init_args?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--admin: string		# Address or key name of an admin
	--amount: string		# Coins to send to the contract during instantiation
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for instantiate
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--label: string		# A human-readable name for this contract in lists
	--ledger		# Use a connected Ledger device
	--no-admin		# You must set this explicitly if you don't want an admin
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Migrate a wasm contract to a new code version
export extern 'neutrond tx wasm migrate' [
	contract_addr_bech32?: string
	new_code_id_int64?: string
	json_encoded_migration_args?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for migrate
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Set new admin for a contract
export extern 'neutrond tx wasm set-contract-admin' [
	contract_addr_bech32?: string
	new_admin_addr_bech32?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-contract-admin
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Upload a wasm binary
export extern 'neutrond tx wasm store' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for store
	--instantiate-anyof-addresses: string		# Any of the addresses can instantiate a contract from the code, optional
	--instantiate-everybody: string		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody: string		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address: string		# Removed: use instantiate-anyof-addresses instead
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Update instantiate config for a codeID
export extern 'neutrond tx wasm update-instantiate-config' [
	code_id_int64?: string
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string@"nu-completions-neutrond--sync-async-block-"		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it (when enabled, the local Keybase is not accessible)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string@"nu-complete neutrond _keys values"		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-instantiate-config
	--instantiate-anyof-addresses: string		# Any of the addresses can instantiate a contract from the code, optional
	--instantiate-everybody: string		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody: string		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address: string		# Removed: use instantiate-anyof-addresses instead
	--keyring-backend: string@"nu-completions-neutrond--os-file-kwallet-pass-test-memory-"		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string@"nu-completions-neutrond--direct-amino-json-"		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# validates the genesis file at the default location or at the location passed as an arg
export extern 'neutrond validate-genesis' [
	file?: string
	--help(-h)		# help for validate-genesis
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Print the application binary version information
export extern 'neutrond version' [
	--help(-h)		# help for version
	--long		# Print long version information
	--output(-o): string@"nu-completions-neutrond--text-json-"		# Output format (text|json) (default "text")
	--home: string		# directory for config and data (default "/Users/user/.neutrond")
	--log_format: string@"nu-completions-neutrond--json-plain-"		# The logging format (json|plain) (default "plain")
	--log_level: string@"nu-completions-neutrond--trace-debug-info-warn-error-fatal-panic-"		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
