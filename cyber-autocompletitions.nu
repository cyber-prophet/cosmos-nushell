# Bostrom Bootloader Hub
extern 'cyber' [
	--help(-h)		# help for cyber
	--home		# directory for config and data (default "/Users/user/.cyber")
	--log_format		# The logging format (json|plain) (default "plain")
	--log_level		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]

# Add a genesis account to genesis.json. The provided account must specify
extern 'cyber add-genesis-account' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for add-genesis-account
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--vesting-amount		# amount of coins for vesting accounts
	--vesting-end-time		# schedule end time (unix epoch) for vesting accounts
	--vesting-start-time		# schedule start time (unix epoch) for vesting accounts
]

# Collect genesis txs and output a genesis.json file
extern 'cyber collect-gentxs' [
	--gentx-dir		# override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
	--help(-h)		# help for collect-gentxs
]

# Create or query an application CLI configuration file
extern 'cyber config' [
	--help(-h)		# help for config
]

# Tool for helping with debugging your application
extern 'cyber debug' [
	--help(-h)		# help for debug
]

# Export state to JSON
extern 'cyber export' [
	--for-zero-height		# Export state to start at height zero (perform preproccessing)
	--height		# Export state from a particular height (-1 means latest height) (default -1)
	--help(-h)		# help for export
	--jail-allowed-addrs		# Comma-separated list of operator addresses of jailed validators to unjail
]

# Generate a genesis transaction that creates a validator with a self-delegation,
extern 'cyber gentx' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amount		# Amount of coins to bond
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id		# The network chain ID
	--commission-max-change-rate		# The maximum commission change rate percentage (per day)
	--commission-max-rate		# The maximum commission rate percentage
	--commission-rate		# The initial commission rate percentage
	--details		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for gentx
	--identity		# The (optional) identity signature (ex. UPort or Keybase)
	--ip		# The node's public IP (default "192.168.8.164")
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation		# The minimum self delegation required on the validator
	--moniker		# The validator's (optional) moniker
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id		# The node's NodeID
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--output-document		# Write the genesis transaction JSON document to the given file instead of the default location
	--pubkey		# The validator's Protobuf JSON encoded public key
	--security-contact		# The validator's (optional) security contact email
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Help provides help for any command in the application.
extern 'cyber help' [
	--help(-h)		# help for help
]

# Initialize validators's and node's configuration files.
extern 'cyber init' [
	--chain-id		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for init
	--overwrite(-o)		# overwrite the genesis.json file
	--recover		# provide seed phrase to recover existing key instead of creating
]

# Keyring management commands. These keys may be in any format supported by the
extern 'cyber keys' [
	--help(-h)		# help for keys
	--keyring-backend		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--output		# Output format (text|json) (default "text")
]

# Migrate the source genesis into the target version and print to STDOUT.
extern 'cyber migrate' [
	--chain-id		# override chain_id with this flag
	--genesis-time		# override genesis_time with this flag
	--help(-h)		# help for migrate
]

# Querying subcommands
extern 'cyber query' [
	--chain-id		# The network chain ID
	--help(-h)		# help for query
]

# 
extern 'cyber rollback' [
	--help(-h)		# help for rollback
]

# Run the full node application with Tendermint in or out of process. By
extern 'cyber start' [
	--abci		# specify abci transport (socket | grpc) (default "socket")
	--address		# Listen address (default "tcp://0.0.0.0:26658")
	--compute-gpu		# Compute on GPU (default true)
	--cpu-profile		# Enable CPU profiling and write to the provided file
	--db_backend		# database backend: goleveldb | cleveldb | boltdb | rocksdb | badgerdb (default "goleveldb")
	--db_dir		# database directory (default "data")
	--fast_sync		# fast blockchain syncing (default true)
	--genesis_hash		# optional SHA-256 hash of the genesis file
	--grpc-only		# Start the node in gRPC query only mode (no Tendermint process is started)
	--halt-height		# Block height at which to gracefully halt the chain and shutdown the node
	--halt-time		# Minimum block time (in Unix seconds) at which to gracefully halt the chain and shutdown the node
	--help(-h)		# help for start
	--inter-block-cache		# Enable inter-block caching (default true)
	--inv-check-period		# Assert registered invariants every N blocks
	--min-retain-blocks		# Minimum block height offset during ABCI commit to prune Tendermint blocks
	--minimum-gas-prices		# Minimum gas prices to accept for transactions; Any fee in a tx must meet this minimum (e.g. 0.01photino;0.0001stake)
	--moniker		# node name (default "Pro16")
	--priv_validator_laddr		# socket address to listen on for connections from external priv_validator process
	--proxy_app		# proxy app address, or one of: 'kvstore', 'persistent_kvstore', 'counter', 'e2e' or 'noop' for local testing. (default "tcp://127.0.0.1:26658")
	--pruning		# Pruning strategy (default|nothing|everything|custom) (default "default")
	--pruning-interval		# Height interval at which pruned heights are removed from disk (ignored if pruning is not 'custom')
	--pruning-keep-every		# Offset heights to keep on disk after 'keep-every' (ignored if pruning is not 'custom')
	--pruning-keep-recent		# Number of recent heights to keep on disk (ignored if pruning is not 'custom')
	--search-api		# Run search API
	--trace-store		# Enable KVStore tracing to an output file
	--transport		# Transport protocol: socket, grpc (default "socket")
	--unsafe-skip-upgrades		# Skip a set of upgrade heights to continue the old binary
	--with-tendermint		# Run abci app embedded in-process with tendermint (default true)
	--x-crisis-skip-assert-invariants		# Skip x/crisis invariants check on startup
]

# Query remote node for status
extern 'cyber status' [
	--help(-h)		# help for status
	--node(-n)		# Node to connect to (default "tcp://localhost:26657")
]

# Tendermint subcommands
extern 'cyber tendermint' [
	--help(-h)		# help for tendermint
]

# testnet will create "v" number of directories and populate each with
extern 'cyber testnet' [
	--algo		# Key signing algorithm to generate keys for (default "secp256k1")
	--chain-id		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for testnet
	--keyring-backend		# Select keyring's backend (os|file|test) (default "os")
	--minimum-gas-prices		# Minimum gas prices to accept for transactions; All fees in a tx must meet this minimum (e.g. 0.01photino,0.001stake) (default "0.000006stake")
	--node-daemon-home		# Home directory of the node's daemon configuration (default "cyber")
	--node-dir-prefix		# Prefix the directory name for each node with (node results in node0, node1, ...) (default "node")
	--output-dir(-o)		# Directory to store initialization data for the testnet (default "./mytestnet")
	--starting-ip-address		# Starting IP address (192.168.0.1 results in persistent peers list ID0@192.168.0.1:46656, ID1@192.168.0.2:46656, ...) (default "192.168.0.1")
	--v		# Number of validators to initialize the testnet with (default 4)
]

# Transactions subcommands
extern 'cyber tx' [
	--chain-id		# The network chain ID
	--help(-h)		# help for tx
]

# validates the genesis file at the default location or at the location passed as an arg
extern 'cyber validate-genesis' [
	--help(-h)		# help for validate-genesis
]

# Print the application binary version information
extern 'cyber version' [
	--help(-h)		# help for version
	--long		# Print long version information
	--output(-o)		# Output format (text|json) (default "text")
]

# Convert an address between hex encoding and bech32.
extern 'cyber debug addr' [
	--help(-h)		# help for addr
]

# Decode a pubkey from proto JSON and display it's address.
extern 'cyber debug pubkey' [
	--help(-h)		# help for pubkey
]

# Convert raw-bytes to hex.
extern 'cyber debug raw-bytes' [
	--help(-h)		# help for raw-bytes
]

# Derive a new private key and encrypt to disk.
extern 'cyber keys add' [
	--account		# Account number for HD derivation
	--algo		# Key signing algorithm to generate keys for (default "secp256k1")
	--coin-type		# coin type number for HD derivation (default 118)
	--dry-run		# Perform action, but don't add key to local keystore
	--hd-path		# Manual HD Path derivation (overrides BIP44 config)
	--help(-h)		# help for add
	--index		# Address index number for HD derivation
	--interactive(-i)		# Interactively prompt user for BIP39 passphrase and mnemonic
	--ledger		# Store a local reference to a private key on a Ledger device
	--multisig		# List of key names stored in keyring to construct a public legacy multisig key
	--multisig-threshold		# K out of N required signatures. For use in conjunction with --multisig (default 1)
	--no-backup		# Don't print out seed phrase (if others are watching the terminal)
	--nosort		# Keys passed to --multisig are taken in the order they're supplied
	--pubkey		# Parse a public key in JSON format and saves key info to <name> file.
	--recover		# Provide seed phrase to recover existing key instead of creating
]

# Delete keys from the Keybase backend.
extern 'cyber keys delete' [
	--force(-f)		# Remove the key unconditionally without asking for the passphrase. Deprecated.
	--help(-h)		# help for delete
	--yes(-y)		# Skip confirmation prompt when deleting offline or ledger key references
]

# Export a private key from the local keyring in ASCII-armored encrypted format.
extern 'cyber keys export' [
	--help(-h)		# help for export
	--unarmored-hex		# Export unarmored hex privkey. Requires --unsafe.
	--unsafe		# Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.
]

# Import a ASCII armored private key into the local keybase.
extern 'cyber keys import' [
	--help(-h)		# help for import
]

# Return a list of all public keys stored by this key manager
extern 'cyber keys list' [
	--help(-h)		# help for list
	--list-names(-n)		# List names only
]

# Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring.
extern 'cyber keys migrate' [
	--dry-run		# Run migration without actually persisting any changes to the new Keybase
	--help(-h)		# help for migrate
]

# Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy
extern 'cyber keys mnemonic' [
	--help(-h)		# help for mnemonic
	--unsafe-entropy		# Prompt the user to supply their own entropy, instead of relying on the system
]

# Convert and print to stdout key addresses and fingerprints from
extern 'cyber keys parse' [
	--help(-h)		# help for parse
]

# Display keys details. If multiple names or addresses are provided,
extern 'cyber keys show' [
	--address(-a)		# Output the address only (overrides --output)
	--bech		# The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
	--device(-d)		# Output the address in a ledger device
	--help(-h)		# help for show
	--multisig-threshold		# K out of N required signatures (default 1)
	--pubkey(-p)		# Output the public key only (overrides --output)
]

# Query for account by address
extern 'cyber query account' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Querying commands for the auth module
extern 'cyber query auth' [
	--help(-h)		# help for auth
]

# Querying commands for the authz module
extern 'cyber query authz' [
	--help(-h)		# help for authz
]

# Querying commands for the bandwidth module
extern 'cyber query bandwidth' [
	--help(-h)		# help for bandwidth
]

# Querying commands for the bank module
extern 'cyber query bank' [
	--help(-h)		# help for bank
]

# Get verified data for a the block at given height
extern 'cyber query block' [
	--help(-h)		# help for block
	--node(-n)		# Node to connect to (default "tcp://localhost:26657")
]

# Querying commands for the distribution module
extern 'cyber query distribution' [
	--help(-h)		# help for distribution
]

# Querying commands for the dmn module
extern 'cyber query dmn' [
	--help(-h)		# help for dmn
]

# Querying commands for the feegrant module
extern 'cyber query feegrant' [
	--help(-h)		# help for feegrant
]

# Querying commands for the governance module
extern 'cyber query gov' [
	--help(-h)		# help for gov
]

# Querying commands for the graph module
extern 'cyber query graph' [
	--help(-h)		# help for graph
]

# Querying commands for the grid module
extern 'cyber query grid' [
	--help(-h)		# help for grid
]

# Querying commands for the IBC module
extern 'cyber query ibc' [
	--help(-h)		# help for ibc
]

# IBC fungible token transfer query subcommands
extern 'cyber query ibc-transfer' [
	--help(-h)		# help for ibc-transfer
]

# Querying commands for the liquidity module
extern 'cyber query liquidity' [
	--help(-h)		# help for liquidity
]

# Querying commands for the minting module
extern 'cyber query mint' [
	--help(-h)		# help for mint
]

# Querying commands for the params module
extern 'cyber query params' [
	--help(-h)		# help for params
]

# Querying commands for the rank module
extern 'cyber query rank' [
	--help(-h)		# help for rank
]

# Querying commands for the resources module
extern 'cyber query resources' [
	--help(-h)		# help for resources
]

# Querying commands for the slashing module
extern 'cyber query slashing' [
	--help(-h)		# help for slashing
]

# Querying commands for the staking module
extern 'cyber query staking' [
	--help(-h)		# help for staking
]

# Get the full tendermint validator set at given height
extern 'cyber query tendermint-validator-set' [
	--help(-h)		# help for tendermint-validator-set
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--limit		# Query number of results returned per page (default 100)
	--node(-n)		# Node to connect to (default "tcp://localhost:26657")
	--page		# Query a specific page of paginated results (default 1)
]

# Example:
extern 'cyber query tx' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tx
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--type		# The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")
]

# Search for transactions that match the exact given events where results are paginated.
extern 'cyber query txs' [
	--events		# list of transaction events in the form of {eventType}.{eventAttribute}={value}
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for txs
	--limit		# Query number of transactions results per page returned (default 30)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--page		# Query a specific page of paginated results (default 1)
]

# Querying commands for the upgrade module
extern 'cyber query upgrade' [
	--help(-h)		# help for upgrade
]

# Querying commands for the wasm module
extern 'cyber query wasm' [
	--help(-h)		# help for wasm
]

# Remove all the data and WAL
extern 'cyber tendermint reset-state' [
	--help(-h)		# help for reset-state
]

# Shows this node's tendermint validator consensus address
extern 'cyber tendermint show-address' [
	--help(-h)		# help for show-address
]

# Show this node's ID
extern 'cyber tendermint show-node-id' [
	--help(-h)		# help for show-node-id
]

# Show this node's tendermint validator info
extern 'cyber tendermint show-validator' [
	--help(-h)		# help for show-validator
]

# (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
extern 'cyber tendermint unsafe-reset-all' [
	--help(-h)		# help for unsafe-reset-all
	--keep-addr-book		# keep the address book intact
]

# Print protocols' and libraries' version numbers
extern 'cyber tendermint version' [
	--help(-h)		# help for version
]

# Authorize and revoke access to execute transactions on behalf of your address
extern 'cyber tx authz' [
	--help(-h)		# help for authz
]

# Bank transaction subcommands
extern 'cyber tx bank' [
	--help(-h)		# help for bank
]

# Broadcast transactions created with the --generate-only
extern 'cyber tx broadcast' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for broadcast
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Crisis transactions subcommands
extern 'cyber tx crisis' [
	--help(-h)		# help for crisis
]

# Decode a binary encoded transaction string
extern 'cyber tx decode' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for decode
	--hex(-x)		# Treat input as hexadecimal instead of base64
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Distribution transactions subcommands
extern 'cyber tx distribution' [
	--help(-h)		# help for distribution
]

# Encode transactions created with the --generate-only flag and signed with the sign command.
extern 'cyber tx encode' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for encode
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Evidence transaction subcommands
extern 'cyber tx evidence' [
	--help(-h)		# help for evidence
]

# Grant and revoke fee allowance for a grantee by a granter
extern 'cyber tx feegrant' [
	--help(-h)		# help for feegrant
]

# Governance transactions subcommands
extern 'cyber tx gov' [
	--help(-h)		# help for gov
]

# Graph transaction subcommands
extern 'cyber tx graph' [
	--help(-h)		# help for graph
]

# grid transactions subcommands
extern 'cyber tx grid' [
	--help(-h)		# help for grid
]

# IBC transaction subcommands
extern 'cyber tx ibc' [
	--help(-h)		# help for ibc
]

# IBC fungible token transfer transaction subcommands
extern 'cyber tx ibc-transfer' [
	--help(-h)		# help for ibc-transfer
]

# Liquidity transaction subcommands
extern 'cyber tx liquidity' [
	--help(-h)		# help for liquidity
]

# Sign transactions created with the --generate-only flag that require multisig signatures.
extern 'cyber tx multisign' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--output-document		# The document is written to the given file instead of STDOUT
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Assemble a batch of multisig transactions generated by batch sign command.
extern 'cyber tx multisign-batch' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign-batch
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig		# Address of the multisig account that the transaction signs on behalf of
	--no-auto-increment		# disable sequence auto increment
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--output-document		# The document is written to the given file instead of STDOUT
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# resources transactions subcommands
extern 'cyber tx resources' [
	--help(-h)		# help for resources
]

# Sign a transaction created with the --generate-only flag.
extern 'cyber tx sign' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--output-document		# The document will be written to the given file instead of STDOUT
	--overwrite		# Overwrite existing signatures with a new one. If disabled, new signature will be appended
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the signatures
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Sign batch files of transactions generated with --generate-only.
extern 'cyber tx sign-batch' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign-batch
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--output-document		# The document will be written to the given file instead of STDOUT
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit (default true)
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Slashing transaction subcommands
extern 'cyber tx slashing' [
	--help(-h)		# help for slashing
]

# Staking transaction subcommands
extern 'cyber tx staking' [
	--help(-h)		# help for staking
]

# Print the addresses that must sign the transaction, those who have already
extern 'cyber tx validate-signatures' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for validate-signatures
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Vesting transaction subcommands
extern 'cyber tx vesting' [
	--help(-h)		# help for vesting
]

# Wasm transaction subcommands
extern 'cyber tx wasm' [
	--help(-h)		# help for wasm
]

# Query for account by address
extern 'cyber query auth account' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all the accounts
extern 'cyber query auth accounts' [
	--count-total		# count total number of records in all-accounts to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for accounts
	--limit		# pagination limit of all-accounts to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of all-accounts to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of all-accounts to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of all-accounts to query for
	--reverse		# results are sorted in descending order
]

# Query the current auth parameters:
extern 'cyber query auth params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query authorization grants for a granter-grantee pair. If msg-type-url
extern 'cyber query authz grants' [
	--count-total		# count total number of records in grants to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants
	--limit		# pagination limit of grants to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of grants to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
]

# Query authorization grants granted to a grantee.
extern 'cyber query authz grants-by-grantee' [
	--count-total		# count total number of records in grantee-grants to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit		# pagination limit of grantee-grants to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of grantee-grants to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of grantee-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of grantee-grants to query for
	--reverse		# results are sorted in descending order
]

# Query authorization grants granted by granter.
extern 'cyber query authz grants-by-granter' [
	--count-total		# count total number of records in granter-grants to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit		# pagination limit of granter-grants to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of granter-grants to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of granter-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of granter-grants to query for
	--reverse		# results are sorted in descending order
]

# Query the bandwidth load
extern 'cyber query bandwidth load' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for load
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the neuron bandwidth [address]
extern 'cyber query bandwidth neuron' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for neuron
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current bandwidth module parameters information
extern 'cyber query bandwidth params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the bandwidth price
extern 'cyber query bandwidth price' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for price
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the total bandwidth
extern 'cyber query bandwidth total' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the total balance of an account or of a specific denomination.
extern 'cyber query bank balances' [
	--count-total		# count total number of records in all balances to query for
	--denom		# The specific balance denomination to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for balances
	--limit		# pagination limit of all balances to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of all balances to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of all balances to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of all balances to query for
	--reverse		# results are sorted in descending order
]

# Query the client metadata for all the registered coin denominations
extern 'cyber query bank denom-metadata' [
	--denom		# The specific denomination to query client metadata for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-metadata
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query total supply of coins that are held by accounts in the chain.
extern 'cyber query bank total' [
	--count-total		# count total number of records in all supply totals to query for
	--denom		# The specific balance denomination to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--limit		# pagination limit of all supply totals to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of all supply totals to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of all supply totals to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of all supply totals to query for
	--reverse		# results are sorted in descending order
]

# Query validator commission rewards from delegators to that validator.
extern 'cyber query distribution commission' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for commission
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all coins in the community pool which is under Governance control.
extern 'cyber query distribution community-pool' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for community-pool
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query distribution params
extern 'cyber query distribution params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all rewards earned by a delegator, optionally restrict to rewards from a single validator.
extern 'cyber query distribution rewards' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for rewards
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all slashes of a validator for a given block range.
extern 'cyber query distribution slashes' [
	--count-total		# count total number of records in validator slashes to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for slashes
	--limit		# pagination limit of validator slashes to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of validator slashes to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of validator slashes to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of validator slashes to query for
	--reverse		# results are sorted in descending order
]

# Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations.
extern 'cyber query distribution validator-outstanding-rewards' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator-outstanding-rewards
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current dmn module parameters information
extern 'cyber query dmn params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query thought
extern 'cyber query dmn thought' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thought
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query thought stats
extern 'cyber query dmn thought-stats' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thought-stats
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all thoughts
extern 'cyber query dmn thoughts' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thoughts
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all thoughts stats
extern 'cyber query dmn thoughts-stats' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thoughts-stats
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details for a grant. 
extern 'cyber query feegrant grant' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grant
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Queries all the grants for a grantee address.
extern 'cyber query feegrant grants-by-grantee' [
	--count-total		# count total number of records in grants to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit		# pagination limit of grants to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of grants to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
]

# Queries all the grants issued for a granter address.
extern 'cyber query feegrant grants-by-granter' [
	--count-total		# count total number of records in grants to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit		# pagination limit of grants to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of grants to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
]

# Query details for a single proposal deposit on a proposal by its identifier.
extern 'cyber query gov deposit' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details for all deposits on a proposal.
extern 'cyber query gov deposits' [
	--count-total		# count total number of records in deposits to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--limit		# pagination limit of deposits to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of deposits to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of deposits to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of deposits to query for
	--reverse		# results are sorted in descending order
]

# Query the all the parameters for the governance process.
extern 'cyber query gov param' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for param
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the all the parameters for the governance process.
extern 'cyber query gov params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details for a proposal. You can find the
extern 'cyber query gov proposal' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposal
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query for a all paginated proposals that match optional filters:
extern 'cyber query gov proposals' [
	--count-total		# count total number of records in proposals to query for
	--depositor		# (optional) filter by proposals deposited on by depositor
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposals
	--limit		# pagination limit of proposals to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of proposals to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of proposals to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of proposals to query for
	--reverse		# results are sorted in descending order
	--status		# (optional) filter proposals by proposal status, status: deposit_period/voting_period/passed/rejected
	--voter		# (optional) filter by proposals voted on by voted
]

# Query which address proposed a proposal with a given ID.
extern 'cyber query gov proposer' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposer
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query tally of votes on a proposal. You can find
extern 'cyber query gov tally' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tally
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details for a single vote on a proposal given its identifier.
extern 'cyber query gov vote' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for vote
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query vote details for a single proposal by its identifier.
extern 'cyber query gov votes' [
	--count-total		# count total number of records in votes to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for votes
	--limit		# pagination limit of votes to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of votes to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of votes to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of votes to query for
	--reverse		# results are sorted in descending order
]

# Query the graph stats
extern 'cyber query graph stats' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for stats
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current grid module parameters information
extern 'cyber query grid params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query grid route that routes for given source and destination accounts
extern 'cyber query grid route' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for route
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query grid value that routed from source account
extern 'cyber query grid routed-from' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routed-from
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query grid value that routed to destination account
extern 'cyber query grid routed-to' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routed-to
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all grid routes
extern 'cyber query grid routes' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all grid routes that made from source account
extern 'cyber query grid routes-from' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes-from
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all grid routes that routed to destination account
extern 'cyber query grid routes-to' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes-to
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# IBC channel query subcommands
extern 'cyber query ibc channel' [
	--help(-h)		# help for channel
]

# IBC client query subcommands
extern 'cyber query ibc client' [
	--help(-h)		# help for client
]

# IBC connection query subcommands
extern 'cyber query ibc connection' [
	--help(-h)		# help for connection
]

# Query the denom hash info from a given denom trace
extern 'cyber query ibc-transfer denom-hash' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-hash
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the denom trace info from a given trace hash
extern 'cyber query ibc-transfer denom-trace' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-trace
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the trace info for all token denominations
extern 'cyber query ibc-transfer denom-traces' [
	--count-total		# count total number of records in denominations trace to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-traces
	--limit		# pagination limit of denominations trace to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of denominations trace to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of denominations trace to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of denominations trace to query for
	--reverse		# results are sorted in descending order
]

# Get the escrow address for a channel
extern 'cyber query ibc-transfer escrow-address' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for escrow-address
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current ibc-transfer parameters
extern 'cyber query ibc-transfer params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details of a liquidity pool batch
extern 'cyber query liquidity batch' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for batch
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the deposit messages on the liquidity pool batch for the specified pool-id and msg-index
extern 'cyber query liquidity deposit' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all deposit messages of the liquidity pool batch on the specified pool
extern 'cyber query liquidity deposits' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query values set as liquidity parameters.
extern 'cyber query liquidity params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details of a liquidity pool
extern 'cyber query liquidity pool' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--pool-coin-denom		# The denomination of the pool coin
	--reserve-acc		# The Bech32 address of the reserve account
]

# Query details about all liquidity pools on a network.
extern 'cyber query liquidity pools' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pools
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index
extern 'cyber query liquidity swap' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swap
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all swap messages in the liquidity pool batch for the specified pool-id
extern 'cyber query liquidity swaps' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swaps
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the withdraw messages in the liquidity pool batch for the specified pool-id and msg-index
extern 'cyber query liquidity withdraw' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraw
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all withdraw messages on the liquidity pool batch for the specified pool-id
extern 'cyber query liquidity withdraws' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraws
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current minting annual provisions value
extern 'cyber query mint annual-provisions' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for annual-provisions
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current minting inflation value
extern 'cyber query mint inflation' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for inflation
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current minting parameters
extern 'cyber query mint params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query for raw parameters by subspace and key
extern 'cyber query params subspace' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for subspace
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query backlinks of given particle
extern 'cyber query rank backlinks' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for backlinks
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query is link exist between particles for given account
extern 'cyber query rank is-exist' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for is-exist
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query is any link exist between particles
extern 'cyber query rank is-exist-any' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for is-exist-any
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current karma of given neuron
extern 'cyber query rank karma' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for karma
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current negentropy of given particle
extern 'cyber query rank negentropy' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for negentropy
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current rank parameters
extern 'cyber query rank params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current rank of given particle
extern 'cyber query rank rank' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for rank
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query search of given particle
extern 'cyber query rank search' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for search
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query top
extern 'cyber query rank top' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for top
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query resources return on investmint
extern 'cyber query resources investmint' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for investmint
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current resources module parameters information
extern 'cyber query resources params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query genesis parameters for the slashing module:
extern 'cyber query slashing params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Use a validators' consensus public key to find the signing-info for that validator:
extern 'cyber query slashing signing-info' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-info
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# signing infos of validators:
extern 'cyber query slashing signing-infos' [
	--count-total		# count total number of records in signing infos to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-infos
	--limit		# pagination limit of signing infos to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of signing infos to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of signing infos to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of signing infos to query for
	--reverse		# results are sorted in descending order
]

# Query delegations for an individual delegator on an individual validator.
extern 'cyber query staking delegation' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegation
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query delegations for an individual delegator on all validators.
extern 'cyber query staking delegations' [
	--count-total		# count total number of records in delegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations
	--limit		# pagination limit of delegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of delegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of delegations to query for
	--reverse		# results are sorted in descending order
]

# Query delegations on an individual validator.
extern 'cyber query staking delegations-to' [
	--count-total		# count total number of records in validator delegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations-to
	--limit		# pagination limit of validator delegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of validator delegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of validator delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of validator delegations to query for
	--reverse		# results are sorted in descending order
]

# Query historical info at given height.
extern 'cyber query staking historical-info' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for historical-info
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query values set as staking parameters.
extern 'cyber query staking params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query values for amounts stored in the staking pool.
extern 'cyber query staking pool' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query a redelegation record for an individual delegator between a source and destination validator.
extern 'cyber query staking redelegation' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegation
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all redelegation records for an individual delegator.
extern 'cyber query staking redelegations' [
	--count-total		# count total number of records in delegator redelegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations
	--limit		# pagination limit of delegator redelegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of delegator redelegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of delegator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of delegator redelegations to query for
	--reverse		# results are sorted in descending order
]

# Query delegations that are redelegating _from_ a validator.
extern 'cyber query staking redelegations-from' [
	--count-total		# count total number of records in validator redelegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations-from
	--limit		# pagination limit of validator redelegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of validator redelegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of validator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of validator redelegations to query for
	--reverse		# results are sorted in descending order
]

# Query unbonding delegations for an individual delegator on an individual validator.
extern 'cyber query staking unbonding-delegation' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegation
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query unbonding delegations for an individual delegator.
extern 'cyber query staking unbonding-delegations' [
	--count-total		# count total number of records in unbonding delegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations
	--limit		# pagination limit of unbonding delegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of unbonding delegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
]

# Query delegations that are unbonding _from_ a validator.
extern 'cyber query staking unbonding-delegations-from' [
	--count-total		# count total number of records in unbonding delegations to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations-from
	--limit		# pagination limit of unbonding delegations to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of unbonding delegations to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
]

# Query details about an individual validator.
extern 'cyber query staking validator' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query details about all validators on a network.
extern 'cyber query staking validators' [
	--count-total		# count total number of records in validators to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validators
	--limit		# pagination limit of validators to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of validators to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of validators to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of validators to query for
	--reverse		# results are sorted in descending order
]

# If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied.
extern 'cyber query upgrade applied' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for applied
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Gets a list of module names and their respective consensus versions.
extern 'cyber query upgrade module_versions' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for module_versions
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Gets the currently scheduled upgrade plan, if one exists
extern 'cyber query upgrade plan' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for plan
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Downloads wasm bytecode for given code id
extern 'cyber query wasm code' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Prints out metadata of a code id
extern 'cyber query wasm code-info' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code-info
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Prints out metadata of a contract given its address
extern 'cyber query wasm contract' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Prints out the code history for a contract given its address
extern 'cyber query wasm contract-history' [
	--count-total		# count total number of records in contract history to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract-history
	--limit		# pagination limit of contract history to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of contract history to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of contract history to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of contract history to query for
	--reverse		# results are sorted in descending order
]

# Querying commands for the wasm module
extern 'cyber query wasm contract-state' [
	--help(-h)		# help for contract-state
]

# Get libwasmvm version
extern 'cyber query wasm libwasmvm-version' [
	--help(-h)		# help for libwasmvm-version
]

# List all wasm bytecode on the chain
extern 'cyber query wasm list-code' [
	--count-total		# count total number of records in list codes to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-code
	--limit		# pagination limit of list codes to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of list codes to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
]

# List wasm all bytecode on the chain for given code id
extern 'cyber query wasm list-contract-by-code' [
	--count-total		# count total number of records in list contracts by code to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-contract-by-code
	--limit		# pagination limit of list contracts by code to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of list contracts by code to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of list contracts by code to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of list contracts by code to query for
	--reverse		# results are sorted in descending order
]

# 		Long:    List all pinned code ids,
extern 'cyber query wasm pinned' [
	--count-total		# count total number of records in list codes to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pinned
	--limit		# pagination limit of list codes to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of list codes to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
]

# execute tx on behalf of granter account:
extern 'cyber tx authz exec' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for exec
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# grant authorization to an address to execute a transaction on your behalf:
extern 'cyber tx authz grant' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--allowed-validators		# Allowed validators addresses separated by ,
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deny-validators		# Deny validators addresses separated by ,
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration		# The Unix timestamp. Default is one year. (default 1693470690)
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--msg-type		# The Msg method name for which we are creating a GenericAuthorization
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit		# SpendLimit for Send Authorization, an array of Coins allowed spend
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# revoke authorization from a granter to a grantee:
extern 'cyber tx authz revoke' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Send funds from one account to another. Note, the'--from' flag is
extern 'cyber tx bank send' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for send
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit proof that an invariant broken to halt the chain
extern 'cyber tx crisis invariant-broken' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for invariant-broken
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Funds the community pool with the specified amount
extern 'cyber tx distribution fund-community-pool' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for fund-community-pool
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Set the withdraw address for rewards associated with a delegator address.
extern 'cyber tx distribution set-withdraw-addr' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-withdraw-addr
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Withdraw all rewards for a single delegator.
extern 'cyber tx distribution withdraw-all-rewards' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-all-rewards
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--max-msgs		# Limit the number of messages per tx (0 for unlimited)
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Withdraw rewards from a given delegation address,
extern 'cyber tx distribution withdraw-rewards' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission		# Withdraw the validator's commission in addition to the rewards
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-rewards
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Grant authorization to pay fees from your address. Note, the'--from' flag is
extern 'cyber tx feegrant grant' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--allowed-messages		# Set of allowed messages for fee allowance
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration		# The RFC 3339 timestamp after which the grant expires for the user
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--period		# period specifies the time duration in which period_spend_limit coins can be spent before that allowance is reset
	--period-limit		# period limit specifies the maximum number of coins that can be spent in the period
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit		# Spend limit specifies the max limit can be used, if not mentioned there is no limit
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# revoke fee grant from a granter to a grantee. Note, the'--from' flag is
extern 'cyber tx feegrant revoke' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a deposit for an active proposal. You can
extern 'cyber tx gov deposit' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a proposal along with an initial deposit.
extern 'cyber tx gov submit-proposal' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# The proposal deposit
	--description		# The proposal description
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for submit-proposal
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# The proposal title
	--type		# The proposal Type
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a vote for an active proposal. You can
extern 'cyber tx gov vote' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for vote
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a vote for an active proposal. You can
extern 'cyber tx gov weighted-vote' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for weighted-vote
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Create cyberlink.
extern 'cyber tx graph cyberlink' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cyberlink
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Create grid route from your address to destination address with provided name
extern 'cyber tx grid create-route' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-route
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Delete your grid route to given destination address
extern 'cyber tx grid delete-route' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delete-route
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Set value of grid route to destination address
extern 'cyber tx grid edit-route' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-route
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Edit name of grid route to given destination address
extern 'cyber tx grid edit-route-name' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-route-name
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# IBC channel transaction subcommands
extern 'cyber tx ibc channel' [
	--help(-h)		# help for channel
]

# IBC client transaction subcommands
extern 'cyber tx ibc client' [
	--help(-h)		# help for client
]

# Transfer a fungible token through IBC. Timeouts can be specified
extern 'cyber tx ibc-transfer transfer' [
	--absolute-timeouts		# Timeout flags are used as absolute timeouts.
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for transfer
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--packet-timeout-height		# Packet timeout block height. The timeout is disabled when set to 0-0. (default "0-1000")
	--packet-timeout-timestamp		# Packet timeout timestamp in nanoseconds from now. Default is 10 minutes. The timeout is disabled when set to 0. (default 600000000000)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Create liquidity pool and deposit coins.
extern 'cyber tx liquidity create-pool' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-pool
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Deposit coins a liquidity pool.
extern 'cyber tx liquidity deposit' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Swap offer coin with demand coin from the liquidity pool with the given order price.
extern 'cyber tx liquidity swap' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for swap
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Withdraw pool coin from the specified liquidity pool.
extern 'cyber tx liquidity withdraw' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Long.
extern 'cyber tx resources investmint' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for investmint
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# unjail a jailed validator:
extern 'cyber tx slashing unjail' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unjail
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# create new validator initialized with a self-delegation to it
extern 'cyber tx staking create-validator' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amount		# Amount of coins to bond
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-max-change-rate		# The maximum commission change rate percentage (per day)
	--commission-max-rate		# The maximum commission rate percentage
	--commission-rate		# The initial commission rate percentage
	--details		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-validator
	--identity		# The optional identity signature (ex. UPort or Keybase)
	--ip		# The node's public IP. It takes effect only when used in combination with --generate-only
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation		# The minimum self delegation required on the validator
	--moniker		# The validator's name
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id		# The node's ID
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--pubkey		# The validator's Protobuf JSON encoded public key
	--security-contact		# The validator's (optional) security contact email
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Delegate an amount of liquid coins to a validator from your wallet.
extern 'cyber tx staking delegate' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delegate
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# edit an existing validator account
extern 'cyber tx staking edit-validator' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-rate		# The new commission rate percentage
	--details		# The validator's (optional) details (default "[do-not-modify]")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-validator
	--identity		# The (optional) identity signature (ex. UPort or Keybase) (default "[do-not-modify]")
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation		# The minimum self delegation required on the validator
	--moniker		# The validator's name (default "[do-not-modify]")
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--security-contact		# The validator's (optional) security contact email (default "[do-not-modify]")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website		# The validator's (optional) website (default "[do-not-modify]")
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Redelegate an amount of illiquid staking tokens from one validator to another.
extern 'cyber tx staking redelegate' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for redelegate
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Unbond an amount of bonded shares from a validator.
extern 'cyber tx staking unbond' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unbond
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Create a new vesting account funded with an allocation of tokens. The
extern 'cyber tx vesting create-vesting-account' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--delayed		# Create a delayed vesting account if true
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-vesting-account
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Clears admin for a contract to prevent further migrations
extern 'cyber tx wasm clear-contract-admin' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for clear-contract-admin
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Execute a command on a wasm contract
extern 'cyber tx wasm execute' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amount		# Coins to send to the contract along with command
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for execute
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Instantiate a wasm contract
extern 'cyber tx wasm instantiate' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--admin		# Address of an admin
	--amount		# Coins to send to the contract during instantiation
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for instantiate
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--label		# A human-readable name for this contract in lists
	--ledger		# Use a connected Ledger device
	--no-admin		# You must set this explicitly if you don't want an admin
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Migrate a wasm contract to a new code version
extern 'cyber tx wasm migrate' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for migrate
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Set new admin for a contract
extern 'cyber tx wasm set-contract-admin' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-contract-admin
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Upload a wasm binary
extern 'cyber tx wasm store' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for store
	--instantiate-everybody		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address		# Only this address can instantiate a contract instance from the code, optional
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Query all channels from a chain
extern 'cyber query ibc channel channels' [
	--count-total		# count total number of records in channels to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for channels
	--limit		# pagination limit of channels to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of channels to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of channels to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of channels to query for
	--reverse		# results are sorted in descending order
]

# Query the client state associated with a channel, by providing its port and channel identifiers.
extern 'cyber query ibc channel client-state' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for client-state
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query all channels associated with a connection
extern 'cyber query ibc channel connections' [
	--count-total		# count total number of records in channels associated with a connection to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit		# pagination limit of channels associated with a connection to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of channels associated with a connection to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of channels associated with a connection to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of channels associated with a connection to query for
	--reverse		# results are sorted in descending order
]

# Query an IBC channel end from a port and channel identifiers
extern 'cyber query ibc channel end' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query the next receive sequence for a given channel
extern 'cyber query ibc channel next-sequence-receive' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for next-sequence-receive
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query a packet acknowledgement
extern 'cyber query ibc channel packet-ack' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-ack
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query a packet commitment
extern 'cyber query ibc channel packet-commitment' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitment
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query all packet commitments associated with a channel
extern 'cyber query ibc channel packet-commitments' [
	--count-total		# count total number of records in packet commitments associated with a channel to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitments
	--limit		# pagination limit of packet commitments associated with a channel to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of packet commitments associated with a channel to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of packet commitments associated with a channel to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of packet commitments associated with a channel to query for
	--reverse		# results are sorted in descending order
]

# Query a packet receipt
extern 'cyber query ibc channel packet-receipt' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-receipt
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain.
extern 'cyber query ibc channel unreceived-acks' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-acks
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--sequences		# 64Slice   comma separated list of packet sequence numbers (default [])
]

# Determine if a packet, given a list of packet commitment sequences, is unreceived.
extern 'cyber query ibc channel unreceived-packets' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-packets
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--sequences		# 64Slice   comma separated list of packet sequence numbers (default [])
]

# Query the consensus state for a particular light client at a given height.
extern 'cyber query ibc client consensus-state' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-state
	--latest-height		# return latest stored consensus state
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query all the consensus states from a given client state.
extern 'cyber query ibc client consensus-states' [
	--count-total		# count total number of records in consensus states to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-states
	--limit		# pagination limit of consensus states to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of consensus states to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of consensus states to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of consensus states to query for
	--reverse		# results are sorted in descending order
]

# Query the latest Tendermint header of the running chain
extern 'cyber query ibc client header' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for header
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the current ibc client parameters
extern 'cyber query ibc client params' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.
extern 'cyber query ibc client self-consensus-state' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for self-consensus-state
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Query stored client state
extern 'cyber query ibc client state' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for state
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query all available light clients
extern 'cyber query ibc client states' [
	--count-total		# count total number of records in client states to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for states
	--limit		# pagination limit of client states to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of client states to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of client states to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of client states to query for
	--reverse		# results are sorted in descending order
]

# Query client activity status. Any client without an 'Active' status is considered inactive
extern 'cyber query ibc client status' [
	--help(-h)		# help for status
]

# Query all connections ends from a chain
extern 'cyber query ibc connection connections' [
	--count-total		# count total number of records in connection ends to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit		# pagination limit of connection ends to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of connection ends to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of connection ends to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of connection ends to query for
	--reverse		# results are sorted in descending order
]

# Query stored connection end
extern 'cyber query ibc connection end' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Query stored client connection paths
extern 'cyber query ibc connection path' [
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for path
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
]

# Prints out all internal state of a contract given its address
extern 'cyber query wasm contract-state all' [
	--count-total		# count total number of records in contract state to query for
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for all
	--limit		# pagination limit of contract state to query for (default 100)
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset		# pagination offset of contract state to query for
	--output(-o)		# Output format (text|json) (default "text")
	--page		# pagination page of contract state to query for. This sets offset to a multiple of limit (default 1)
	--page-key		# pagination page-key of contract state to query for
	--reverse		# results are sorted in descending order
]

# Prints out internal state for of a contract given its address
extern 'cyber query wasm contract-state raw' [
	--ascii		# ascii encoded key argument
	--b64		# base64 encoded key argument
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for raw
	--hex		# hex encoded  key argument
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Calls contract with given address with query data and prints the returned result
extern 'cyber query wasm contract-state smart' [
	--ascii		# ascii encoded query argument
	--b64		# base64 encoded query argument
	--height		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for smart
	--hex		# hex encoded  query argument
	--node		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o)		# Output format (text|json) (default "text")
]

# Cancel a software upgrade along with an initial deposit.
extern 'cyber tx gov submit-proposal cancel-software-upgrade' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# deposit of proposal
	--description		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cancel-software-upgrade
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a clear admin for a contract to prevent further migrations proposal
extern 'cyber tx gov submit-proposal clear-contract-admin' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for clear-contract-admin
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a community pool spend proposal along with an initial deposit.
extern 'cyber tx gov submit-proposal community-pool-spend' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for community-pool-spend
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a execute wasm contract proposal (run by any address)
extern 'cyber tx gov submit-proposal execute-contract' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--amount		# Coins to send to the contract during instantiation
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for execute-contract
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as		# The address that is passed as sender to the contract on proposal execution
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit an IBC client breaking upgrade proposal along with an initial deposit.
extern 'cyber tx gov submit-proposal ibc-upgrade' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# deposit of proposal
	--description		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for ibc-upgrade
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit an instantiate wasm contract proposal
extern 'cyber tx gov submit-proposal instantiate-contract' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--admin		# Address of an admin
	--amount		# Coins to send to the contract during instantiation
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for instantiate-contract
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--label		# A human-readable name for this contract in lists
	--ledger		# Use a connected Ledger device
	--no-admin		# You must set this explicitly if you don't want an admin
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as		# The address that pays the init funds. It is the creator of the contract and passed to the contract as sender on proposal execution
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a migrate wasm contract to a new code version proposal
extern 'cyber tx gov submit-proposal migrate-contract' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for migrate-contract
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a parameter proposal along with an initial deposit.
extern 'cyber tx gov submit-proposal param-change' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for param-change
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a pin code proposal for pinning a code to cache
extern 'cyber tx gov submit-proposal pin-codes' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for pin-codes
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a new admin for a contract proposal
extern 'cyber tx gov submit-proposal set-contract-admin' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-contract-admin
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a software upgrade along with an initial deposit.
extern 'cyber tx gov submit-proposal software-upgrade' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# deposit of proposal
	--description		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for software-upgrade
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# title of proposal
	--upgrade-height		# The height at which the upgrade must happen
	--upgrade-info		# Optional info for the planned upgrade such as commit hash, etc.
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a sudo wasm contract proposal (to call privileged commands)
extern 'cyber tx gov submit-proposal sudo-contract' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sudo-contract
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a unpin code proposal for unpinning a code to cache
extern 'cyber tx gov submit-proposal unpin-codes' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unpin-codes
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit an update IBC client proposal along with an initial deposit.
extern 'cyber tx gov submit-proposal update-client' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# deposit of proposal
	--description		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-client
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit an update instantiate config  proposal for multiple code ids.
extern 'cyber tx gov submit-proposal update-instantiate-config' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-instantiate-config
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# Submit a wasm binary proposal
extern 'cyber tx gov submit-proposal wasm-store' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit		# Deposit of proposal
	--description		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for wasm-store
	--instantiate-everybody		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address		# Only this address can instantiate a contract instance from the code, optional
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--proposal		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as		# The address that is stored as code creator
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title		# Title of proposal
	--type		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# create a new IBC client with the specified client state and consensus state
extern 'cyber tx ibc client create' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]

# submit a client misbehaviour to prevent future updates
extern 'cyber tx ibc client misbehaviour' [
	--help(-h)		# help for misbehaviour
]

# update existing client with a header
extern 'cyber tx ibc client update' [
	--help(-h)		# help for update
]

# upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states
extern 'cyber tx ibc client upgrade' [
	--account-number(-a)		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b)		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees		# Fees to pay along with transaction; eg: 10uatom
	--from		# Name or address of private key with which to sign
	--gas		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for upgrade
	--keyring-backend		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o)		# Output format (text|json) (default "json")
	--sequence(-s)		# The sequence number of the signing account (offline mode only)
	--sign-mode		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
]
