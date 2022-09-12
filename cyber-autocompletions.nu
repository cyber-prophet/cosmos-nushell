
# ['Bostrom Bootloader Hub']
extern 'cyber ' [
	--help(-h)		# help for cyber
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Collect genesis txs and output a genesis.json file']
extern 'cyber collect-gentxs' [
	--gentx-dir: string		# override default "gentx" directory from which collect and execute genesis transactions; default [--home]/config/gentx/
	--help(-h)		# help for collect-gentxs
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Tool for helping with debugging your application']
extern 'cyber debug' [
	--help(-h)		# help for debug
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Generate a genesis transaction that creates a validator with a self-delegation,', 'that is signed by the key in the Keyring referenced by a given name. A node ID and Bech32 consensus', 'pubkey may optionally be provided. If they are omitted, they will be retrieved from the priv_validator.json', 'file. The following default parameters are included:', '    ', '\tdelegation amount:           100000000stake', '\tcommission rate:             0.1', '\tcommission max rate:         0.2', '\tcommission max change rate:  0.01', '\tminimum self delegation:     1']
extern 'cyber gentx' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Amount of coins to bond
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--chain-id: string		# The network chain ID
	--commission-max-change-rate: string		# The maximum commission change rate percentage (per day)
	--commission-max-rate: string		# The maximum commission rate percentage
	--commission-rate: string		# The initial commission rate percentage
	--details: string		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for gentx
	--identity: string		# The (optional) identity signature (ex. UPort or Keybase)
	--ip: string		# The node's public IP (default "10.50.1.95")
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's (optional) moniker
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id: string		# The node's NodeID
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--output-document: string		# Write the genesis transaction JSON document to the given file instead of the default location
	--pubkey: string		# The validator's Protobuf JSON encoded public key
	--security-contact: string		# The validator's (optional) security contact email
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Initialize validators's and node's configuration files."]
extern 'cyber init' [
	--chain-id: string		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for init
	--overwrite(-o)		# overwrite the genesis.json file
	--recover		# provide seed phrase to recover existing key instead of creating
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Migrate the source genesis into the target version and print to STDOUT.']
extern 'cyber migrate' [
	--chain-id: string		# override chain_id with this flag
	--genesis-time: string		# override genesis_time with this flag
	--help(-h)		# help for migrate
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['A state rollback is performed to recover from an incorrect application state transition,', 'when Tendermint has persisted an incorrect app hash and is thus unable to make', 'progress. Rollback overwrites a state at height n with the state at height n - 1.', 'The application also roll back to height n - 1. No blocks are removed, so upon', 'restarting Tendermint the transactions in block n will be re-executed against the', 'application.']
extern 'cyber rollback' [
	--help(-h)		# help for rollback
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query remote node for status']
extern 'cyber status' [
	--help(-h)		# help for status
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['testnet will create "v" number of directories and populate each with', 'necessary files (private validator, genesis, config, etc.).', 'Note, strict routability for addresses is turned off in the config file.']
extern 'cyber testnet' [
	--algo: string		# Key signing algorithm to generate keys for (default "secp256k1")
	--chain-id: string		# genesis file chain-id, if left blank will be randomly created
	--help(-h)		# help for testnet
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--minimum-gas-prices: string		# Minimum gas prices to accept for transactions; All fees in a tx must meet this minimum (e.g. 0.01photino,0.001stake) (default "0.000006stake")
	--node-daemon-home: string		# Home directory of the node's daemon configuration (default "cyber")
	--node-dir-prefix: string		# Prefix the directory name for each node with (node results in node0, node1, ...) (default "node")
	--output-dir(-o): string		# Directory to store initialization data for the testnet (default "./mytestnet")
	--starting-ip-address: string		# Starting IP address (192.168.0.1 results in persistent peers list ID0@192.168.0.1:46656, ID1@192.168.0.2:46656, ...) (default "192.168.0.1")
	--v: int		# Number of validators to initialize the testnet with (default 4)
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['validates the genesis file at the default location or at the location passed as an arg']
extern 'cyber validate-genesis' [
	--help(-h)		# help for validate-genesis
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Convert an address between hex encoding and bech32.']
extern 'cyber debug addr' [
	--help(-h)		# help for addr
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Convert raw-bytes to hex.']
extern 'cyber debug raw-bytes' [
	--help(-h)		# help for raw-bytes
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Add a genesis account to genesis.json. The provided account must specify', 'the account address or key name and a list of initial coins. If a key name is given,', 'the address will be looked up in the local Keybase. The list of initial tokens must', 'contain valid denominations. Accounts may optionally be supplied with vesting parameters.']
extern 'cyber add-genesis-account' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for add-genesis-account
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--vesting-amount: string		# amount of coins for vesting accounts
	--vesting-end-time: int		# schedule end time (unix epoch) for vesting accounts
	--vesting-start-time: int		# schedule start time (unix epoch) for vesting accounts
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Export state to JSON']
extern 'cyber export' [
	--for-zero-height		# Export state to start at height zero (perform preproccessing)
	--height: int		# Export state from a particular height (-1 means latest height) (default -1)
	--help(-h)		# help for export
	--jail-allowed-addrs: string		# Comma-separated list of operator addresses of jailed validators to unjail
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Keyring management commands. These keys may be in any format supported by the', 'Tendermint crypto library and can be used by light-clients, full nodes, or any other application', 'that needs to sign with a private key.', 'The keyring supports the following backends:', "    os          Uses the operating system's default credentials store.", "    file        Uses encrypted file-based keystore within the app's configuration directory.", '                This keyring will request a password each time it is accessed, which may occur', '                multiple times in a single command resulting in repeated password prompts.', '    kwallet     Uses KDE Wallet Manager as a credentials management application.', '    pass        Uses the pass command line utility to store and retrieve keys.', '    test        Stores keys insecurely to disk. It does not prompt for a password to be unlocked', '                and it should be use only for testing purposes.', 'kwallet and pass backends depend on external tools. Refer to their respective documentation for more', 'information:', '    KWallet     https://github.com/KDE/kwallet', '    pass        https://www.passwordstore.org/', 'The pass backend requires GnuPG: https://gnupg.org/']
extern 'cyber keys' [
	--help(-h)		# help for keys
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--output: string		# Output format (text|json) (default "text")
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Run the full node application with Tendermint in or out of process. By', 'default, the application will run with Tendermint in process.', "Pruning options can be provided via the '--pruning' flag or alternatively with '--pruning-keep-recent',", "'pruning-keep-every', and 'pruning-interval' together.", "For '--pruning' the options are as follows:", 'default: the last 100 states are kept in addition to every 500th state; pruning at 10 block intervals', 'nothing: all historic states will be saved, nothing will be deleted (i.e. archiving node)', 'everything: all saved states will be deleted, storing only the current and previous state; pruning at 10 block intervals', "custom: allow pruning options to be manually specified through 'pruning-keep-recent', 'pruning-keep-every', and 'pruning-interval'", "Node halting configurations exist in the form of two flags: '--halt-height' and '--halt-time'. During", 'the ABCI Commit phase, the node will check if the current block height is greater than or equal to', 'the halt-height or if the current block time is greater than or equal to the halt-time. If so, the', 'node will attempt to gracefully shutdown and the block will not be committed. In addition, the node', 'will not be able to commit subsequent blocks.', "For profiling and benchmarking purposes, CPU profiling can be enabled via the '--cpu-profile' flag", 'which accepts a path for the resulting pprof file.', "The node may be started in a 'query only' mode where only the gRPC and JSON HTTP", "API services are enabled via the 'grpc-only' flag. In this mode, Tendermint is", 'bypassed and can be used when legacy queries are needed after an on-chain upgrade', 'is performed. Note, when enabled, gRPC will also be automatically enabled.']
extern 'cyber start' [
	--abci: string		# specify abci transport (socket | grpc) (default "socket")
	--address: string		# Listen address (default "tcp://0.0.0.0:26658")
	--compute-gpu		# Compute on GPU (default true)
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
	--pruning: string		# Pruning strategy (default|nothing|everything|custom) (default "default")
	--pruning-interval: int		# Height interval at which pruned heights are removed from disk (ignored if pruning is not 'custom')
	--pruning-keep-every: int		# Offset heights to keep on disk after 'keep-every' (ignored if pruning is not 'custom')
	--pruning-keep-recent: int		# Number of recent heights to keep on disk (ignored if pruning is not 'custom')
	--search-api		# Run search API
	--trace-store: string		# Enable KVStore tracing to an output file
	--transport: string		# Transport protocol: socket, grpc (default "socket")
	--unsafe-skip-upgrades: string		# Skip a set of upgrade heights to continue the old binary
	--with-tendermint		# Run abci app embedded in-process with tendermint (default true)
	--x-crisis-skip-assert-invariants		# Skip x/crisis invariants check on startup
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Transactions subcommands']
extern 'cyber tx' [
	--chain-id: string		# The network chain ID
	--help(-h)		# help for tx
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Decode a pubkey from proto JSON and display it's address."]
extern 'cyber debug pubkey' [
	--help(-h)		# help for pubkey
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Delete keys from the Keybase backend.', 'Note that removing offline or ledger keys will remove', 'only the public key references stored locally, i.e.', 'private keys stored in a ledger device cannot be deleted with the CLI.']
extern 'cyber keys delete' [
	--force(-f)		# Remove the key unconditionally without asking for the passphrase. Deprecated.
	--help(-h)		# help for delete
	--yes(-y)		# Skip confirmation prompt when deleting offline or ledger key references
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Import a ASCII armored private key into the local keybase.']
extern 'cyber keys import' [
	--help(-h)		# help for import
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Migrate key information from the legacy (db-based) Keybase to the new keyring-based Keyring.', "The legacy Keybase used to persist keys in a LevelDB database stored in a 'keys' sub-directory of", "the old client application's home directory, e.g. $HOME/.gaiacli/keys/.", 'For each key material entry, the command will prompt if the key should be skipped or not. If the key', 'is not to be skipped, the passphrase must be entered. The key will only be migrated if the passphrase', 'is correct. Otherwise, the command will exit and migration must be repeated.', "It is recommended to run in 'dry-run' mode first to verify all key migration material."]
extern 'cyber keys migrate' [
	--dry-run		# Run migration without actually persisting any changes to the new Keybase
	--help(-h)		# help for migrate
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Convert and print to stdout key addresses and fingerprints from', 'hexadecimal into bech32 cosmos prefixed format and vice versa.']
extern 'cyber keys parse' [
	--help(-h)		# help for parse
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Authorize and revoke access to execute transactions on behalf of your address']
extern 'cyber tx authz' [
	--help(-h)		# help for authz
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Broadcast transactions created with the --generate-only', 'flag and signed with the sign command. Read a transaction from [file_path] and', 'broadcast it to a node. If you supply a dash (-) argument in place of an input', 'filename, the command reads from standard input.', '$ <appd> tx broadcast ./mytxn.json']
extern 'cyber tx broadcast' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for broadcast
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Decode a binary encoded transaction string']
extern 'cyber tx decode' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for decode
	--hex(-x)		# Treat input as hexadecimal instead of base64
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Encode transactions created with the --generate-only flag and signed with the sign command.', 'Read a transaction from <file>, serialize it to the Amino wire protocol, and output it as base64.', 'If you supply a dash (-) argument in place of an input filename, the command reads from standard input.']
extern 'cyber tx encode' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for encode
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Grant and revoke fee allowance for a grantee by a granter']
extern 'cyber tx feegrant' [
	--help(-h)		# help for feegrant
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Graph transaction subcommands']
extern 'cyber tx graph' [
	--help(-h)		# help for graph
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC transaction subcommands']
extern 'cyber tx ibc' [
	--help(-h)		# help for ibc
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Liquidity transaction subcommands']
extern 'cyber tx liquidity' [
	--help(-h)		# help for liquidity
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Assemble a batch of multisig transactions generated by batch sign command.', 'Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the', 'multisig key [name], and attach the key name to the transaction read from [file].']
extern 'cyber tx multisign-batch' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign-batch
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address of the multisig account that the transaction signs on behalf of
	--no-auto-increment		# disable sequence auto increment
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Sign a transaction created with the --generate-only flag.', 'It will read a transaction from [file], sign it, and print its JSON encoding.', 'If the --signature-only flag is set, it will output the signature parts only.', 'The --offline flag makes sure that the client will not reach out to full node.', 'As a result, the account and sequence number queries will not be performed and', 'it is required to set such parameters manually. Note, invalid values will cause', 'the transaction to fail.', 'The --multisig=<multisig_key> flag generates a signature on behalf of a multisig account', 'key. It implies --signature-only. Full multisig signed transactions may eventually', "be generated via the 'multisign' command."]
extern 'cyber tx sign' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino encoded JSON suitable for submiting to the txs REST endpoint
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--overwrite		# Overwrite existing signatures with a new one. If disabled, new signature will be appended
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the signatures
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Slashing transaction subcommands']
extern 'cyber tx slashing' [
	--help(-h)		# help for slashing
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Print the addresses that must sign the transaction, those who have already', 'signed it, and make sure that signatures are in the correct order.', 'The command would check whether all required signers have signed the transactions, whether', 'the signatures were collected in the right order, and if the signature is valid over the', 'given transaction. If the --offline flag is also set, signature validation over the', 'transaction will be not be performed as that will require RPC communication with a full node.']
extern 'cyber tx validate-signatures' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for validate-signatures
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Wasm transaction subcommands']
extern 'cyber tx wasm' [
	--help(-h)		# help for wasm
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['grant authorization to an address to execute a transaction on your behalf:', 'Examples:', ' $ cyber tx authz grant cosmos1skjw.. send /cosmos.bank.v1beta1.MsgSend --spend-limit=1000stake --from=cosmos1skl..', ' $ cyber tx authz grant cosmos1skjw.. generic --msg-type=/cosmos.gov.v1beta1.MsgVote --from=cosmos1sk..']
extern 'cyber tx authz grant' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-validators: string		# Allowed validators addresses separated by ,
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deny-validators: string		# Deny validators addresses separated by ,
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration: int		# The Unix timestamp. Default is one year. (default 1695352673)
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--msg-type: string		# The Msg method name for which we are creating a GenericAuthorization
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# SpendLimit for Send Authorization, an array of Coins allowed spend
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Grant authorization to pay fees from your address. Note, the'--from' flag is", '\t\t\t\tignored as it is implied from [granter].', 'Examples:', 'cyber tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z or', 'cyber tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --period 3600 --period-limit 10stake --expiration 36000 or', 'cyber tx feegrant grant cosmos1skjw... cosmos1skjw... --spend-limit 100stake --expiration 2022-01-30T15:04:05Z ', '\t--allowed-messages "/cosmos.gov.v1beta1.MsgSubmitProposal,/cosmos.gov.v1beta1.MsgVote"']
extern 'cyber tx feegrant grant' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--allowed-messages: string		# Set of allowed messages for fee allowance
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--expiration: string		# The RFC 3339 timestamp after which the grant expires for the user
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for grant
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--period: int		# period specifies the time duration in which period_spend_limit coins can be spent before that allowance is reset
	--period-limit: string		# period limit specifies the maximum number of coins that can be spent in the period
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--spend-limit: string		# Spend limit specifies the max limit can be used, if not mentioned there is no limit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Create cyberlink.']
extern 'cyber tx graph cyberlink' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cyberlink
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC client transaction subcommands']
extern 'cyber tx ibc client' [
	--help(-h)		# help for client
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Deposit coins a liquidity pool.', 'This deposit request is not processed immediately since it is accumulated in the liquidity pool batch.', 'All requests in a batch are treated equally and executed at the same swap price.']
extern 'cyber tx liquidity deposit' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Withdraw pool coin from the specified liquidity pool.', 'This swap request is not processed immediately since it is accumulated in the liquidity pool batch.', 'All requests in a batch are treated equally and executed at the same swap price.']
extern 'cyber tx liquidity withdraw' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Clears admin for a contract to prevent further migrations']
extern 'cyber tx wasm clear-contract-admin' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for clear-contract-admin
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Instantiate a wasm contract']
extern 'cyber tx wasm instantiate' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--admin: string		# Address of an admin
	--amount: string		# Coins to send to the contract during instantiation
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for instantiate
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--label: string		# A human-readable name for this contract in lists
	--ledger		# Use a connected Ledger device
	--no-admin		# You must set this explicitly if you don't want an admin
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Set new admin for a contract']
extern 'cyber tx wasm set-contract-admin' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-contract-admin
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['create a new IBC client with the specified client state and consensus state', '\t- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}', '\t- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}']
extern 'cyber tx ibc client create' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['update existing client with a header']
extern 'cyber tx ibc client update' [
	--help(-h)		# help for update
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Create or query an application CLI configuration file']
extern 'cyber config' [
	--help(-h)		# help for config
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying subcommands']
extern 'cyber query' [
	--chain-id: string		# The network chain ID
	--help(-h)		# help for query
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Print the application binary version information']
extern 'cyber version' [
	--help(-h)		# help for version
	--long		# Print long version information
	--output(-o): string		# Output format (text|json) (default "text")
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Export a private key from the local keyring in ASCII-armored encrypted format.', 'When both the --unarmored-hex and --unsafe flags are selected, cryptographic', 'private key material is exported in an INSECURE fashion that is designed to', 'allow users to import their keys in hot wallets. This feature is for advanced', 'users only that are confident about how to handle private keys work and are', 'FULLY AWARE OF THE RISKS. If you are unsure, you may want to do some research', 'and export your keys in ASCII-armored encrypted format.']
extern 'cyber keys export' [
	--help(-h)		# help for export
	--unarmored-hex		# Export unarmored hex privkey. Requires --unsafe.
	--unsafe		# Enable unsafe operations. This flag must be switched on along with all unsafe operation-specific options.
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Create a bip39 mnemonic, sometimes called a seed phrase, by reading from the system entropy. To pass your own entropy, use --unsafe-entropy']
extern 'cyber keys mnemonic' [
	--help(-h)		# help for mnemonic
	--unsafe-entropy		# Prompt the user to supply their own entropy, instead of relying on the system
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Bank transaction subcommands']
extern 'cyber tx bank' [
	--help(-h)		# help for bank
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Distribution transactions subcommands']
extern 'cyber tx distribution' [
	--help(-h)		# help for distribution
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Governance transactions subcommands']
extern 'cyber tx gov' [
	--help(-h)		# help for gov
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC fungible token transfer transaction subcommands']
extern 'cyber tx ibc-transfer' [
	--help(-h)		# help for ibc-transfer
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['resources transactions subcommands']
extern 'cyber tx resources' [
	--help(-h)		# help for resources
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Staking transaction subcommands']
extern 'cyber tx staking' [
	--help(-h)		# help for staking
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['execute tx on behalf of granter account:']
extern 'cyber tx authz exec' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for exec
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["revoke fee grant from a granter to a grantee. Note, the'--from' flag is", '\t\t\tignored as it is implied from [granter].']
extern 'cyber tx feegrant revoke' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Create liquidity pool and deposit coins.']
extern 'cyber tx liquidity create-pool' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-pool
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['unjail a jailed validator:', '$ <appd> tx slashing unjail --from mykey']
extern 'cyber tx slashing unjail' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unjail
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Migrate a wasm contract to a new code version']
extern 'cyber tx wasm migrate' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for migrate
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['submit a client misbehaviour to prevent future updates']
extern 'cyber tx ibc client misbehaviour' [
	--help(-h)		# help for misbehaviour
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query for account by address']
extern 'cyber query account' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the authz module']
extern 'cyber query authz' [
	--help(-h)		# help for authz
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the bank module']
extern 'cyber query bank' [
	--help(-h)		# help for bank
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the distribution module']
extern 'cyber query distribution' [
	--help(-h)		# help for distribution
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Error: invalid evidence hash: encoding/hex: invalid byte: U+002D '-'"]
extern 'cyber query evidence' [
	--count-total		# count total number of records in evidence to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for evidence
	--limit: int		# pagination limit of evidence to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of evidence to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of evidence to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of evidence to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the governance module']
extern 'cyber query gov' [
	--help(-h)		# help for gov
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the grid module']
extern 'cyber query grid' [
	--help(-h)		# help for grid
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC fungible token transfer query subcommands']
extern 'cyber query ibc-transfer' [
	--help(-h)		# help for ibc-transfer
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the minting module']
extern 'cyber query mint' [
	--help(-h)		# help for mint
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the rank module']
extern 'cyber query rank' [
	--help(-h)		# help for rank
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the slashing module']
extern 'cyber query slashing' [
	--help(-h)		# help for slashing
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Get the full tendermint validator set at given height']
extern 'cyber query tendermint-validator-set' [
	--help(-h)		# help for tendermint-validator-set
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test) (default "os")
	--limit: int		# Query number of results returned per page (default 100)
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Search for transactions that match the exact given events where results are paginated.', "Each event takes the form of '{eventType}.{eventAttribute}={value}'. Please refer", "to each module's documentation for the full set of events to query for. Each module", "documents its respective events under 'xx_events.md'."]
extern 'cyber query txs' [
	--events: string		# list of transaction events in the form of {eventType}.{eventAttribute}={value}
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for txs
	--limit: int		# Query number of transactions results per page returned (default 30)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# Query a specific page of paginated results (default 1)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the wasm module']
extern 'cyber query wasm' [
	--help(-h)		# help for wasm
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Funds the community pool with the specified amount']
extern 'cyber tx distribution fund-community-pool' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for fund-community-pool
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Withdraw all rewards for a single delegator.', 'Note that if you use this command with --broadcast-mode=sync or --broadcast-mode=async, the max-msgs flag will automatically be set to 0.']
extern 'cyber tx distribution withdraw-all-rewards' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-all-rewards
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--max-msgs: int		# Limit the number of messages per tx (0 for unlimited)
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a deposit for an active proposal. You can', 'find the proposal-id by running "cyber query gov proposals".']
extern 'cyber tx gov deposit' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for deposit
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a vote for an active proposal. You can', 'find the proposal-id by running "cyber query gov proposals".']
extern 'cyber tx gov vote' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for vote
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Transfer a fungible token through IBC. Timeouts can be specified', 'as absolute or relative using the "absolute-timeouts" flag. Timeout height can be set by passing in the height string', 'in the form {revision}-{height} using the "packet-timeout-height" flag. Relative timeout height is added to the block', 'height queried from the latest consensus state corresponding to the counterparty channel. Relative timeout timestamp ', 'is added to the greater value of the local clock time and the block timestamp queried from the latest consensus state ', 'corresponding to the counterparty channel. Any timeout set to 0 is disabled.']
extern 'cyber tx ibc-transfer transfer' [
	--absolute-timeouts		# Timeout flags are used as absolute timeouts.
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for transfer
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--packet-timeout-height: string		# Packet timeout block height. The timeout is disabled when set to 0-0. (default "0-1000")
	--packet-timeout-timestamp: int		# Packet timeout timestamp in nanoseconds from now. Default is 10 minutes. The timeout is disabled when set to 0. (default 600000000000)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['create new validator initialized with a self-delegation to it']
extern 'cyber tx staking create-validator' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Amount of coins to bond
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-max-change-rate: string		# The maximum commission change rate percentage (per day)
	--commission-max-rate: string		# The maximum commission rate percentage
	--commission-rate: string		# The initial commission rate percentage
	--details: string		# The validator's (optional) details
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-validator
	--identity: string		# The optional identity signature (ex. UPort or Keybase)
	--ip: string		# The node's public IP. It takes effect only when used in combination with --generate-only
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's name
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--node-id: string		# The node's ID
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--pubkey: string		# The validator's Protobuf JSON encoded public key
	--security-contact: string		# The validator's (optional) security contact email
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['edit an existing validator account']
extern 'cyber tx staking edit-validator' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission-rate: string		# The new commission rate percentage
	--details: string		# The validator's (optional) details (default "[do-not-modify]")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-validator
	--identity: string		# The (optional) identity signature (ex. UPort or Keybase) (default "[do-not-modify]")
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--min-self-delegation: string		# The minimum self delegation required on the validator
	--moniker: string		# The validator's name (default "[do-not-modify]")
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--security-contact: string		# The validator's (optional) security contact email (default "[do-not-modify]")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--website: string		# The validator's (optional) website (default "[do-not-modify]")
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Unbond an amount of bonded shares from a validator.']
extern 'cyber tx staking unbond' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unbond
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query authorization grants granted to a grantee.', 'Examples:', '$ cyber q authz grants-by-grantee cosmos1skj..']
extern 'cyber query authz grants-by-grantee' [
	--count-total		# count total number of records in grantee-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grantee-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grantee-grants to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of grantee-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grantee-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the total balance of an account or of a specific denomination.']
extern 'cyber query bank balances' [
	--count-total		# count total number of records in all balances to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for balances
	--limit: int		# pagination limit of all balances to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all balances to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of all balances to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all balances to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query total supply of coins that are held by accounts in the chain.']
extern 'cyber query bank total' [
	--count-total		# count total number of records in all supply totals to query for
	--denom: string		# The specific balance denomination to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--limit: int		# pagination limit of all supply totals to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all supply totals to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of all supply totals to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all supply totals to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all coins in the community pool which is under Governance control.']
extern 'cyber query distribution community-pool' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for community-pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all rewards earned by a delegator, optionally restrict to rewards from a single validator.']
extern 'cyber query distribution rewards' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for rewards
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations.']
extern 'cyber query distribution validator-outstanding-rewards' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator-outstanding-rewards
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details for all deposits on a proposal.', 'You can find the proposal-id by running "cyber query gov proposals".']
extern 'cyber query gov deposits' [
	--count-total		# count total number of records in deposits to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--limit: int		# pagination limit of deposits to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of deposits to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of deposits to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of deposits to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the all the parameters for the governance process.']
extern 'cyber query gov params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query for a all paginated proposals that match optional filters:']
extern 'cyber query gov proposals' [
	--count-total		# count total number of records in proposals to query for
	--depositor: string		# (optional) filter by proposals deposited on by depositor
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposals
	--limit: int		# pagination limit of proposals to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of proposals to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of proposals to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of proposals to query for
	--reverse		# results are sorted in descending order
	--status: string		# (optional) filter proposals by proposal status, status: deposit_period/voting_period/passed/rejected
	--voter: string		# (optional) filter by proposals voted on by voted
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query tally of votes on a proposal. You can find', 'the proposal-id by running "cyber query gov proposals".']
extern 'cyber query gov tally' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tally
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query vote details for a single proposal by its identifier.']
extern 'cyber query gov votes' [
	--count-total		# count total number of records in votes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for votes
	--limit: int		# pagination limit of votes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of votes to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of votes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of votes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query grid route that routes for given source and destination accounts']
extern 'cyber query grid route' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for route
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query grid value that routed to destination account']
extern 'cyber query grid routed-to' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routed-to
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all grid routes that made from source account']
extern 'cyber query grid routes-from' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes-from
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the denom hash info from a given denom trace']
extern 'cyber query ibc-transfer denom-hash' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-hash
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the trace info for all token denominations']
extern 'cyber query ibc-transfer denom-traces' [
	--count-total		# count total number of records in denominations trace to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-traces
	--limit: int		# pagination limit of denominations trace to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of denominations trace to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of denominations trace to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of denominations trace to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current ibc-transfer parameters']
extern 'cyber query ibc-transfer params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current minting inflation value']
extern 'cyber query mint inflation' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for inflation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query backlinks of given particle']
extern 'cyber query rank backlinks' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for backlinks
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query is any link exist between particles']
extern 'cyber query rank is-exist-any' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for is-exist-any
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current negentropy of given particle']
extern 'cyber query rank negentropy' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for negentropy
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current rank of given particle']
extern 'cyber query rank rank' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for rank
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query top']
extern 'cyber query rank top' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for top
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Use a validators' consensus public key to find the signing-info for that validator:", '$ <appd> query slashing signing-info \'{"@type":"/cosmos.crypto.ed25519.PubKey","key":"OauFcTKbN5Lx3fJL689cikXBqe+hcp6Y+x0rYUdR9Jk="}\'']
extern 'cyber query slashing signing-info' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Downloads wasm bytecode for given code id']
extern 'cyber query wasm code' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Prints out metadata of a contract given its address']
extern 'cyber query wasm contract' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the wasm module']
extern 'cyber query wasm contract-state' [
	--help(-h)		# help for contract-state
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['List all wasm bytecode on the chain']
extern 'cyber query wasm list-code' [
	--count-total		# count total number of records in list codes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-code
	--limit: int		# pagination limit of list codes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list codes to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['\t\tLong:    List all pinned code ids,']
extern 'cyber query wasm pinned' [
	--count-total		# count total number of records in list codes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pinned
	--limit: int		# pagination limit of list codes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list codes to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of list codes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list codes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Prints out internal state for of a contract given its address']
extern 'cyber query wasm contract-state raw' [
	--ascii		# ascii encoded key argument
	--b64		# base64 encoded key argument
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for raw
	--hex		# hex encoded  key argument
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Help provides help for any command in the application.', 'Simply type cyber help [path to command] for full details.']
extern 'cyber help' [
	--help(-h)		# help for help
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Derive a new private key and encrypt to disk.', 'Optionally specify a BIP39 mnemonic, a BIP39 passphrase to further secure the mnemonic,', 'and a bip32 HD path to derive a specific account. The key will be stored under the given name', 'and encrypted with the given password. The only input that is required is the encryption password.', 'If run with -i, it will prompt the user for BIP44 path, BIP39 mnemonic, and passphrase.', 'The flag --recover allows one to recover a key from a seed passphrase.', 'If run with --dry-run, a key would be generated (or recovered) but not stored to the', 'local keystore.', 'Use the --pubkey flag to add arbitrary public keys to the keystore for constructing', 'multisig transactions.', 'You can create and store a multisig key by passing the list of key names stored in a keyring', 'and the minimum number of signatures required through --multisig-threshold. The keys are', 'sorted by address, unless the flag --nosort is set.']
extern 'cyber keys add' [
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
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Display keys details. If multiple names or addresses are provided,', 'then an ephemeral multisig key will be created under the name "multi"', 'consisting of all the keys provided by name and multisig threshold.']
extern 'cyber keys show' [
	--address(-a)		# Output the address only (overrides --output)
	--bech: string		# The Bech32 prefix encoding for a key (acc|val|cons) (default "acc")
	--device(-d)		# Output the address in a ledger device
	--help(-h)		# help for show
	--multisig-threshold: int		# K out of N required signatures (default 1)
	--pubkey(-p)		# Output the public key only (overrides --output)
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['Evidence transaction subcommands']
extern 'cyber tx evidence' [
	--help(-h)		# help for evidence
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Sign transactions created with the --generate-only flag that require multisig signatures.', 'Read one or more signatures from one or more [signature] file, generate a multisig signature compliant to the', 'multisig key [name], and attach the key name to the transaction read from [file].']
extern 'cyber tx multisign' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amino		# Generate Amino-encoded JSON suitable for submitting to the txs REST endpoint
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for multisign
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--output-document: string		# The document is written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Vesting transaction subcommands']
extern 'cyber tx vesting' [
	--help(-h)		# help for vesting
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC channel transaction subcommands']
extern 'cyber tx ibc channel' [
	--help(-h)		# help for channel
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Execute a command on a wasm contract']
extern 'cyber tx wasm execute' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Coins to send to the contract along with command
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for execute
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['upgrade the IBC client associated with the provided client identifier while providing proof committed by the counterparty chain to the new client and consensus states', '\t- ClientState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ClientState","sequence":"1","frozen_sequence":"0","consensus_state":{"public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"},"allow_update_after_proposal":false}', '\t- ConsensusState JSON example: {"@type":"/ibc.lightclients.solomachine.v1.ConsensusState","public_key":{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AtK50+5pJOoaa04qqAqrnyAqsYrwrR/INnA6UPIaYZlp"},"diversifier":"testing","timestamp":"10"}']
extern 'cyber tx ibc client upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for upgrade
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the bandwidth module']
extern 'cyber query bandwidth' [
	--help(-h)		# help for bandwidth
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the dmn module']
extern 'cyber query dmn' [
	--help(-h)		# help for dmn
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the graph module']
extern 'cyber query graph' [
	--help(-h)		# help for graph
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the liquidity module']
extern 'cyber query liquidity' [
	--help(-h)		# help for liquidity
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the resources module']
extern 'cyber query resources' [
	--help(-h)		# help for resources
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# []
extern 'cyber query tx' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for tx
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--type: string		# The type to be used when querying tx, can be one of "hash", "acc_seq", "signature" (default "hash")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Send funds from one account to another. Note, the'--from' flag is", 'ignored as it is implied from [from_key_or_address].']
extern 'cyber tx bank send' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for send
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Withdraw rewards from a given delegation address,', 'and optionally withdraw validator commission if the delegation address given is a validator operator.']
extern 'cyber tx distribution withdraw-rewards' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--commission		# Withdraw the validator's commission in addition to the rewards
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for withdraw-rewards
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a vote for an active proposal. You can', 'find the proposal-id by running "cyber query gov proposals".']
extern 'cyber tx gov weighted-vote' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for weighted-vote
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Delegate an amount of liquid coins to a validator from your wallet.']
extern 'cyber tx staking delegate' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delegate
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query authorization grants for a granter-grantee pair. If msg-type-url', 'is set, it will select grants only for that msg type.', 'Examples:', '$ cyber query authz grants cosmos1skj.. cosmos1skjwj..', '$ cyber query authz grants cosmos1skjw.. cosmos1skjwj.. /cosmos.bank.v1beta1.MsgSend']
extern 'cyber query authz grants' [
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the client metadata for all the registered coin denominations']
extern 'cyber query bank denom-metadata' [
	--denom: string		# The specific denomination to query client metadata for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-metadata
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query distribution params']
extern 'cyber query distribution params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details for a single proposal deposit on a proposal by its identifier.']
extern 'cyber query gov deposit' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details for a proposal. You can find the', 'proposal-id by running "cyber query gov proposals".']
extern 'cyber query gov proposal' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposal
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details for a single vote on a proposal given its identifier.']
extern 'cyber query gov vote' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for vote
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query grid value that routed from source account']
extern 'cyber query grid routed-from' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routed-from
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all grid routes that routed to destination account']
extern 'cyber query grid routes-to' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes-to
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Get the escrow address for a channel']
extern 'cyber query ibc-transfer escrow-address' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for escrow-address
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current minting parameters']
extern 'cyber query mint params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current karma of given neuron']
extern 'cyber query rank karma' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for karma
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query search of given particle']
extern 'cyber query rank search' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for search
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['signing infos of validators:', '$ <appd> query slashing signing-infos']
extern 'cyber query slashing signing-infos' [
	--count-total		# count total number of records in signing infos to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for signing-infos
	--limit: int		# pagination limit of signing infos to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of signing infos to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of signing infos to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of signing infos to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Prints out the code history for a contract given its address']
extern 'cyber query wasm contract-history' [
	--count-total		# count total number of records in contract history to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for contract-history
	--limit: int		# pagination limit of contract history to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of contract history to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of contract history to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of contract history to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['List wasm all bytecode on the chain for given code id']
extern 'cyber query wasm list-contract-by-code' [
	--count-total		# count total number of records in list contracts by code to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for list-contract-by-code
	--limit: int		# pagination limit of list contracts by code to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of list contracts by code to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of list contracts by code to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of list contracts by code to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Calls contract with given address with query data and prints the returned result']
extern 'cyber query wasm contract-state smart' [
	--ascii		# ascii encoded query argument
	--b64		# base64 encoded query argument
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for smart
	--hex		# hex encoded  query argument
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the bandwidth load']
extern 'cyber query bandwidth load' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for load
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current bandwidth module parameters information']
extern 'cyber query bandwidth params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the total bandwidth']
extern 'cyber query bandwidth total' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for total
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query thought']
extern 'cyber query dmn thought' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thought
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all thoughts']
extern 'cyber query dmn thoughts' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thoughts
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the graph stats']
extern 'cyber query graph stats' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for stats
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the deposit messages on the liquidity pool batch for the specified pool-id and msg-index', 'If batch messages are normally processed from the endblock,', 'the resulting state is applied and the messages are removed from the beginning of the next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity deposit' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposit
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query values set as liquidity parameters.']
extern 'cyber query liquidity params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details about all liquidity pools on a network.']
extern 'cyber query liquidity pools' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pools
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all swap messages in the liquidity pool batch for the specified pool-id', 'If batch messages are normally processed from the endblock,', 'the resulting state is applied and the messages are removed in the beginning of next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity swaps' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swaps
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all withdraw messages on the liquidity pool batch for the specified pool-id', 'If batch messages are normally processed from the endblock,', 'the resulting state is applied and the messages are removed in the beginning of next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity withdraws' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraws
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current resources module parameters information']
extern 'cyber query resources params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Tendermint subcommands']
extern 'cyber tendermint' [
	--help(-h)		# help for tendermint
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Crisis transactions subcommands']
extern 'cyber tx crisis' [
	--help(-h)		# help for crisis
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Sign batch files of transactions generated with --generate-only.', 'The command processes list of transactions from file (one StdTx each line), generate', "signed transactions or signatures and print their JSON encoding, delimited by '\\n'.", 'As the signatures are generated, the command updates the account sequence number accordingly.', 'If the --signature-only flag is set, it will output the signature parts only.', 'The --offline flag makes sure that the client will not reach out to full node.', 'As a result, the account and the sequence number queries will not be performed and', 'it is required to set such parameters manually. Note, invalid values will cause', 'the transaction to fail. The sequence will be incremented automatically for each', 'transaction that is signed.', 'The --multisig=<multisig_key> flag generates a signature on behalf of a multisig', 'account key. It implies --signature-only.']
extern 'cyber tx sign-batch' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sign-batch
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--multisig: string		# Address or key name of the multisig account on behalf of which the transaction shall be signed
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--output-document: string		# The document will be written to the given file instead of STDOUT
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--signature-only		# Print only the generated signature, then exit (default true)
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Swap offer coin with demand coin from the liquidity pool with the given order price.', 'This swap request is not processed immediately since it is accumulated in the liquidity pool batch.', 'All requests in a batch are treated equally and executed at the same swap price.', 'The order of swap requests is ignored since the universal swap price is calculated in every batch to prevent front running.', 'The requested swap is executed with a swap price that is calculated from the given swap price function of the pool, the other swap requests, and the liquidity pool coin reserve status.', 'Swap orders are executed only when the execution swap price is equal to or greater than the submitted order price of the swap order.']
extern 'cyber tx liquidity swap' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for swap
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the auth module']
extern 'cyber query auth' [
	--help(-h)		# help for auth
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the feegrant module']
extern 'cyber query feegrant' [
	--help(-h)		# help for feegrant
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the params module']
extern 'cyber query params' [
	--help(-h)		# help for params
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the upgrade module']
extern 'cyber query upgrade' [
	--help(-h)		# help for upgrade
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a proposal along with an initial deposit.', 'Proposal title, description, type and deposit can be given directly or through a proposal JSON file.']
extern 'cyber tx gov submit-proposal' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# The proposal deposit
	--description: string		# The proposal description
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for submit-proposal
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# The proposal title
	--type: string		# The proposal Type
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Redelegate an amount of illiquid staking tokens from one validator to another.']
extern 'cyber tx staking redelegate' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for redelegate
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query validator commission rewards from delegators to that validator.']
extern 'cyber query distribution commission' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for commission
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the all the parameters for the governance process.']
extern 'cyber query gov param' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for param
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current grid module parameters information']
extern 'cyber query grid params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the denom trace info from a given trace hash']
extern 'cyber query ibc-transfer denom-trace' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for denom-trace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query is link exist between particles for given account']
extern 'cyber query rank is-exist' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for is-exist
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query genesis parameters for the slashing module:', '$ <appd> query slashing params']
extern 'cyber query slashing params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Get libwasmvm version']
extern 'cyber query wasm libwasmvm-version' [
	--help(-h)		# help for libwasmvm-version
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Create a new vesting account funded with an allocation of tokens. The', 'account can either be a delayed or continuous vesting account, which is determined', "by the '--delayed' flag. All vesting accouts created will have their start time", "set by the committed block's time. The end_time must be provided as a UNIX epoch", 'timestamp.']
extern 'cyber tx vesting create-vesting-account' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--delayed		# Create a delayed vesting account if true
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-vesting-account
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the bandwidth price']
extern 'cyber query bandwidth price' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for price
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query thought stats']
extern 'cyber query dmn thought-stats' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thought-stats
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details of a liquidity pool batch']
extern 'cyber query liquidity batch' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for batch
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details of a liquidity pool']
extern 'cyber query liquidity pool' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--pool-coin-denom: string		# The denomination of the pool coin
	--reserve-acc: string		# The Bech32 address of the reserve account
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the withdraw messages in the liquidity pool batch for the specified pool-id and msg-index', 'if the batch message are normally processed from the endblock,', 'the resulting state is applied and the messages are removed in the beginning of next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity withdraw' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for withdraw
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Remove all the data and WAL']
extern 'cyber tendermint reset-state' [
	--help(-h)		# help for reset-state
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Show this node's ID"]
extern 'cyber tendermint show-node-id' [
	--help(-h)		# help for show-node-id
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["(unsafe) Remove all the data and WAL, reset this node's validator to genesis state"]
extern 'cyber tendermint unsafe-reset-all' [
	--help(-h)		# help for unsafe-reset-all
	--keep-addr-book		# keep the address book intact
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit proof that an invariant broken to halt the chain']
extern 'cyber tx crisis invariant-broken' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for invariant-broken
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all the accounts']
extern 'cyber query auth accounts' [
	--count-total		# count total number of records in all-accounts to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for accounts
	--limit: int		# pagination limit of all-accounts to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of all-accounts to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of all-accounts to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of all-accounts to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details for a grant. ', 'You can find the fee-grant of a granter and grantee.']
extern 'cyber query feegrant grant' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grant
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Queries all the grants issued for a granter address.']
extern 'cyber query feegrant grants-by-granter' [
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['If upgrade-name was previously executed on the chain, this returns the header for the block at which it was applied.', 'This helps a client determine which binary was valid over a given range of blocks, as well as more context to understand past migrations.']
extern 'cyber query upgrade applied' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for applied
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Gets the currently scheduled upgrade plan, if one exists']
extern 'cyber query upgrade plan' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for plan
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a clear admin for a contract to prevent further migrations proposal']
extern 'cyber tx gov submit-proposal clear-contract-admin' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for clear-contract-admin
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a execute wasm contract proposal (run by any address)']
extern 'cyber tx gov submit-proposal execute-contract' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--amount: string		# Coins to send to the contract during instantiation
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for execute-contract
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as: string		# The address that is passed as sender to the contract on proposal execution
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit an instantiate wasm contract proposal']
extern 'cyber tx gov submit-proposal instantiate-contract' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--admin: string		# Address of an admin
	--amount: string		# Coins to send to the contract during instantiation
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for instantiate-contract
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--label: string		# A human-readable name for this contract in lists
	--ledger		# Use a connected Ledger device
	--no-admin		# You must set this explicitly if you don't want an admin
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as: string		# The address that pays the init funds. It is the creator of the contract and passed to the contract as sender on proposal execution
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a parameter proposal along with an initial deposit.', 'The proposal details must be supplied via a JSON file. For values that contains', 'objects, only non-empty fields will be updated.', 'IMPORTANT: Currently parameter changes are evaluated but not validated, so it is', 'very important that any "value" change is valid (ie. correct type and within bounds)', 'for its respective parameter, eg. "MaxValidators" should be an integer and not a decimal.', 'Proper vetting of a parameter change proposal should prevent this from happening', '(no deposits should occur during the governance process), but it should be noted', 'regardless.']
extern 'cyber tx gov submit-proposal param-change' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for param-change
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a new admin for a contract proposal']
extern 'cyber tx gov submit-proposal set-contract-admin' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-contract-admin
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a sudo wasm contract proposal (to call privileged commands)']
extern 'cyber tx gov submit-proposal sudo-contract' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for sudo-contract
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit an update IBC client proposal along with an initial deposit.', 'Please specify a subject client identifier you want to update..', 'Please specify the substitute client the subject client will be updated to.']
extern 'cyber tx gov submit-proposal update-client' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-client
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a wasm binary proposal']
extern 'cyber tx gov submit-proposal wasm-store' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for wasm-store
	--instantiate-everybody: string		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody: string		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address: string		# Only this address can instantiate a contract instance from the code, optional
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--run-as: string		# The address that is stored as code creator
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Return a list of all public keys stored by this key manager', 'along with their associated name and address.']
extern 'cyber keys list' [
	--help(-h)		# help for list
	--list-names(-n)		# List names only
	--home: string		# The application home directory (default "/Users/user/.cyber")
	--keyring-backend: string		# Select keyring's backend (os|file|test) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--output: string		# Output format (text|json) (default "text")
	--trace		# print out full stack trace on errors
]
# ['revoke authorization from a granter to a grantee:']
extern 'cyber tx authz revoke' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for revoke
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Get verified data for a the block at given height']
extern 'cyber query block' [
	--help(-h)		# help for block
	--node(-n): string		# Node to connect to (default "tcp://localhost:26657")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the staking module']
extern 'cyber query staking' [
	--help(-h)		# help for staking
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Long.']
extern 'cyber tx resources investmint' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for investmint
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all slashes of a validator for a given block range.']
extern 'cyber query distribution slashes' [
	--count-total		# count total number of records in validator slashes to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for slashes
	--limit: int		# pagination limit of validator slashes to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator slashes to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator slashes to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator slashes to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all grid routes']
extern 'cyber query grid routes' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for routes
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current rank parameters']
extern 'cyber query rank params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Prints out all internal state of a contract given its address']
extern 'cyber query wasm contract-state all' [
	--count-total		# count total number of records in contract state to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for all
	--limit: int		# pagination limit of contract state to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of contract state to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of contract state to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of contract state to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current dmn module parameters information']
extern 'cyber query dmn params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all deposit messages of the liquidity pool batch on the specified pool', 'If batch messages are normally processed from the endblock, the resulting state is applied and the messages are removed in the beginning of next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity deposits' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for deposits
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query resources return on investmint']
extern 'cyber query resources investmint' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for investmint
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Show this node's tendermint validator info"]
extern 'cyber tendermint show-validator' [
	--help(-h)		# help for show-validator
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query for account by address']
extern 'cyber query auth account' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for account
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Queries all the grants for a grantee address.']
extern 'cyber query feegrant grants-by-grantee' [
	--count-total		# count total number of records in grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-grantee
	--limit: int		# pagination limit of grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of grants to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Gets a list of module names and their respective consensus versions.', 'Following the command with a specific module name will return only', "that module's information."]
extern 'cyber query upgrade module_versions' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for module_versions
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a community pool spend proposal along with an initial deposit.', 'The proposal details must be supplied via a JSON file.']
extern 'cyber tx gov submit-proposal community-pool-spend' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for community-pool-spend
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a migrate wasm contract to a new code version proposal']
extern 'cyber tx gov submit-proposal migrate-contract' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for migrate-contract
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a software upgrade along with an initial deposit.', 'Please specify a unique name and height for the upgrade to take effect.', 'You may include info to reference a binary download link, in a format compatible with: https://github.com/cosmos/cosmos-sdk/tree/master/cosmovisor']
extern 'cyber tx gov submit-proposal software-upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for software-upgrade
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--upgrade-height: int		# The height at which the upgrade must happen
	--upgrade-info: string		# Optional info for the planned upgrade such as commit hash, etc.
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit an update instantiate config  proposal for multiple code ids.', 'Example: ', '$ cyber tx gov submit-proposal update-instantiate-config 1,nobody 2,everybody 3,bostrom1l2rsakp388kuv9k8qzq6lrm9taddae7fpx59wm']
extern 'cyber tx gov submit-proposal update-instantiate-config' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for update-instantiate-config
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query delegations for an individual delegator on all validators.']
extern 'cyber query staking delegations' [
	--count-total		# count total number of records in delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations
	--limit: int		# pagination limit of delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of delegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query historical info at given height.']
extern 'cyber query staking historical-info' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for historical-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query values for amounts stored in the staking pool.']
extern 'cyber query staking pool' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for pool
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all redelegation records for an individual delegator.']
extern 'cyber query staking redelegations' [
	--count-total		# count total number of records in delegator redelegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations
	--limit: int		# pagination limit of delegator redelegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of delegator redelegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of delegator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of delegator redelegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query unbonding delegations for an individual delegator on an individual validator.']
extern 'cyber query staking unbonding-delegation' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query delegations that are unbonding _from_ a validator.']
extern 'cyber query staking unbonding-delegations-from' [
	--count-total		# count total number of records in unbonding delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations-from
	--limit: int		# pagination limit of unbonding delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of unbonding delegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details about all validators on a network.']
extern 'cyber query staking validators' [
	--count-total		# count total number of records in validators to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validators
	--limit: int		# pagination limit of validators to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validators to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of validators to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validators to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['grid transactions subcommands']
extern 'cyber tx grid' [
	--help(-h)		# help for grid
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Querying commands for the IBC module']
extern 'cyber query ibc' [
	--help(-h)		# help for ibc
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query authorization grants granted by granter.', 'Examples:', '$ cyber q authz grants-by-granter cosmos1skj..']
extern 'cyber query authz grants-by-granter' [
	--count-total		# count total number of records in granter-grants to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for grants-by-granter
	--limit: int		# pagination limit of granter-grants to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of granter-grants to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of granter-grants to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of granter-grants to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current minting annual provisions value']
extern 'cyber query mint annual-provisions' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for annual-provisions
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the neuron bandwidth [address]']
extern 'cyber query bandwidth neuron' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for neuron
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index', 'If the batch message are normally processed and from the endblock,', 'the resulting state is applied and the messages are removed in the beginning of next block.', 'To query for past blocks, query the block height using the REST/gRPC API of a node that is not pruned.']
extern 'cyber query liquidity swap' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for swap
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Print protocols' and libraries' version numbers", 'against which this app has been compiled.']
extern 'cyber tendermint version' [
	--help(-h)		# help for version
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query for raw parameters by subspace and key']
extern 'cyber query params subspace' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for subspace
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit an IBC client breaking upgrade proposal along with an initial deposit.', 'The client state specified is the upgraded client state representing the upgraded chain', 'Example Upgraded Client State JSON: ', '{', '\t"@type":"/ibc.lightclients.tendermint.v1.ClientState",', ' \t"chain_id":"testchain1",', '\t"unbonding_period":"1814400s",', '\t"latest_height":{"revision_number":"0","revision_height":"2"},', '\t"proof_specs":[{"leaf_spec":{"hash":"SHA256","prehash_key":"NO_HASH","prehash_value":"SHA256","length":"VAR_PROTO","prefix":"AA=="},"inner_spec":{"child_order":[0,1],"child_size":33,"min_prefix_length":4,"max_prefix_length":12,"empty_child":null,"hash":"SHA256"},"max_depth":0,"min_depth":0},{"leaf_spec":{"hash":"SHA256","prehash_key":"NO_HASH","prehash_value":"SHA256","length":"VAR_PROTO","prefix":"AA=="},"inner_spec":{"child_order":[0,1],"child_size":32,"min_prefix_length":1,"max_prefix_length":1,"empty_child":null,"hash":"SHA256"},"max_depth":0,"min_depth":0}],', '\t"upgrade_path":["upgrade","upgradedIBCState"],', '}']
extern 'cyber tx gov submit-proposal ibc-upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for ibc-upgrade
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a unpin code proposal for unpinning a code to cache']
extern 'cyber tx gov submit-proposal unpin-codes' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for unpin-codes
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query delegations on an individual validator.']
extern 'cyber query staking delegations-to' [
	--count-total		# count total number of records in validator delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegations-to
	--limit: int		# pagination limit of validator delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator delegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query a redelegation record for an individual delegator between a source and destination validator.']
extern 'cyber query staking redelegation' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query unbonding delegations for an individual delegator.']
extern 'cyber query staking unbonding-delegations' [
	--count-total		# count total number of records in unbonding delegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unbonding-delegations
	--limit: int		# pagination limit of unbonding delegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of unbonding delegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of unbonding delegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of unbonding delegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Create grid route from your address to destination address with provided name']
extern 'cyber tx grid create-route' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for create-route
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Set value of grid route to destination address']
extern 'cyber tx grid edit-route' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-route
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC channel query subcommands']
extern 'cyber query ibc channel' [
	--help(-h)		# help for channel
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC connection query subcommands']
extern 'cyber query ibc connection' [
	--help(-h)		# help for connection
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the client state associated with a channel, by providing its port and channel identifiers.']
extern 'cyber query ibc channel client-state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for client-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query an IBC channel end from a port and channel identifiers']
extern 'cyber query ibc channel end' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query a packet acknowledgement']
extern 'cyber query ibc channel packet-ack' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-ack
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all packet commitments associated with a channel']
extern 'cyber query ibc channel packet-commitments' [
	--count-total		# count total number of records in packet commitments associated with a channel to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitments
	--limit: int		# pagination limit of packet commitments associated with a channel to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of packet commitments associated with a channel to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of packet commitments associated with a channel to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of packet commitments associated with a channel to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Given a list of acknowledgement sequences from counterparty, determine if an ack on the counterparty chain has been received on the executing chain.', 'The return value represents:', '- Unreceived packet acknowledgement: packet commitment exists on original sending (executing) chain and ack exists on receiving chain.']
extern 'cyber query ibc channel unreceived-acks' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-acks
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all connections ends from a chain']
extern 'cyber query ibc connection connections' [
	--count-total		# count total number of records in connection ends to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of connection ends to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of connection ends to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of connection ends to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of connection ends to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query stored client connection paths']
extern 'cyber query ibc connection path' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for path
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Upload a wasm binary']
extern 'cyber tx wasm store' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for store
	--instantiate-everybody: string		# Everybody can instantiate a contract from the code, optional
	--instantiate-nobody: string		# Nobody except the governance process can instantiate a contract from the code, optional
	--instantiate-only-address: string		# Only this address can instantiate a contract instance from the code, optional
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query which address proposed a proposal with a given ID.']
extern 'cyber query gov proposer' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for proposer
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all thoughts stats']
extern 'cyber query dmn thoughts-stats' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for thoughts-stats
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current auth parameters:', '$ <appd> query auth params']
extern 'cyber query auth params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Submit a pin code proposal for pinning a code to cache']
extern 'cyber tx gov submit-proposal pin-codes' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# Deposit of proposal
	--description: string		# Description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for pin-codes
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--proposal: string		# Proposal file path (if this path is given, other proposal flags are ignored)
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# Title of proposal
	--type: string		# Permission of proposal, types: store-code/instantiate/migrate/update-admin/clear-admin/text/parameter_change/software_upgrade
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query values set as staking parameters.']
extern 'cyber query staking params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query details about an individual validator.']
extern 'cyber query staking validator' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for validator
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Edit name of grid route to given destination address']
extern 'cyber tx grid edit-route-name' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for edit-route-name
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all channels from a chain']
extern 'cyber query ibc channel channels' [
	--count-total		# count total number of records in channels to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for channels
	--limit: int		# pagination limit of channels to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the next receive sequence for a given channel']
extern 'cyber query ibc channel next-sequence-receive' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for next-sequence-receive
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query a packet receipt']
extern 'cyber query ibc channel packet-receipt' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-receipt
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query stored connection end']
extern 'cyber query ibc connection end' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for end
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Set the withdraw address for rewards associated with a delegator address.']
extern 'cyber tx distribution set-withdraw-addr' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for set-withdraw-addr
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Shows this node's tendermint validator consensus address"]
extern 'cyber tendermint show-address' [
	--help(-h)		# help for show-address
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query delegations for an individual delegator on an individual validator.']
extern 'cyber query staking delegation' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for delegation
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Delete your grid route to given destination address']
extern 'cyber tx grid delete-route' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for delete-route
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all channels associated with a connection']
extern 'cyber query ibc channel connections' [
	--count-total		# count total number of records in channels associated with a connection to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for connections
	--limit: int		# pagination limit of channels associated with a connection to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of channels associated with a connection to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of channels associated with a connection to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of channels associated with a connection to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Determine if a packet, given a list of packet commitment sequences, is unreceived.', 'The return value represents:', '- Unreceived packet commitments: no acknowledgement exists on receiving chain for the given packet commitment sequence on sending chain.']
extern 'cyber query ibc channel unreceived-packets' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for unreceived-packets
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--sequences: int		# 64Slice   comma separated list of packet sequence numbers (default [])
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Prints out metadata of a code id']
extern 'cyber query wasm code-info' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for code-info
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query delegations that are redelegating _from_ a validator.']
extern 'cyber query staking redelegations-from' [
	--count-total		# count total number of records in validator redelegations to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for redelegations-from
	--limit: int		# pagination limit of validator redelegations to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of validator redelegations to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of validator redelegations to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of validator redelegations to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query a packet commitment']
extern 'cyber query ibc channel packet-commitment' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for packet-commitment
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Cancel a software upgrade along with an initial deposit.']
extern 'cyber tx gov submit-proposal cancel-software-upgrade' [
	--account-number(-a): int		# The account number of the signing account (offline mode only)
	--broadcast-mode(-b): string		# Transaction broadcasting mode (sync|async|block) (default "sync")
	--deposit: string		# deposit of proposal
	--description: string		# description of proposal
	--dry-run		# ignore the --gas flag and perform a simulation of a transaction, but don't broadcast it
	--fee-account: string		# Fee account pays fees for the transaction instead of deducting from the signer
	--fees: string		# Fees to pay along with transaction; eg: 10uatom
	--from: string		# Name or address of private key with which to sign
	--gas: string		# gas limit to set per-transaction; set to "auto" to calculate sufficient gas automatically (default 200000)
	--gas-adjustment: string		# adjustment factor to be multiplied against the estimate returned by the tx simulation; if the gas limit is set manually this flag is ignored  (default 1)
	--gas-prices: string		# Gas prices in decimal format to determine the transaction fee (e.g. 0.1uatom)
	--generate-only		# Build an unsigned transaction and write it to STDOUT (when enabled, the local Keybase is not accessible)
	--help(-h)		# help for cancel-software-upgrade
	--keyring-backend: string		# Select keyring's backend (os|file|kwallet|pass|test|memory) (default "os")
	--keyring-dir: string		# The client Keyring directory; if omitted, the default 'home' directory will be used
	--ledger		# Use a connected Ledger device
	--node: string		# <host>:<port> to tendermint rpc interface for this chain (default "tcp://localhost:26657")
	--note: string		# Note to add a description to the transaction (previously --memo)
	--offline		# Offline mode (does not allow any online functionality
	--output(-o): string		# Output format (text|json) (default "json")
	--sequence(-s): int		# The sequence number of the signing account (offline mode only)
	--sign-mode: string		# Choose sign mode (direct|amino-json), this is an advanced feature
	--timeout-height: int		# Set a block timeout height to prevent the tx from being committed past a certain height
	--title: string		# title of proposal
	--yes(-y)		# Skip tx broadcasting prompt confirmation
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['IBC client query subcommands']
extern 'cyber query ibc client' [
	--help(-h)		# help for client
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all the consensus states from a given client state.']
extern 'cyber query ibc client consensus-states' [
	--count-total		# count total number of records in consensus states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-states
	--limit: int		# pagination limit of consensus states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of consensus states to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of consensus states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of consensus states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the current ibc client parameters']
extern 'cyber query ibc client params' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for params
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query stored client state']
extern 'cyber query ibc client state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ["Query client activity status. Any client without an 'Active' status is considered inactive"]
extern 'cyber query ibc client status' [
	--help(-h)		# help for status
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the consensus state for a particular light client at a given height.', "If the '--latest' flag is included, the query returns the latest consensus state, overriding the height argument."]
extern 'cyber query ibc client consensus-state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for consensus-state
	--latest-height		# return latest stored consensus state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--prove		# show proofs for the query results (default true)
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the self consensus state for this chain. This result may be used for verifying IBC clients representing this chain which are hosted on counterparty chains.']
extern 'cyber query ibc client self-consensus-state' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for self-consensus-state
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query the latest Tendermint header of the running chain']
extern 'cyber query ibc client header' [
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for header
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--output(-o): string		# Output format (text|json) (default "text")
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]
# ['Query all available light clients']
extern 'cyber query ibc client states' [
	--count-total		# count total number of records in client states to query for
	--height: int		# Use a specific height to query state at (this can error if the node is pruning state)
	--help(-h)		# help for states
	--limit: int		# pagination limit of client states to query for (default 100)
	--node: string		# <host>:<port> to Tendermint RPC interface for this chain (default "tcp://localhost:26657")
	--offset: int		# pagination offset of client states to query for
	--output(-o): string		# Output format (text|json) (default "text")
	--page: int		# pagination page of client states to query for. This sets offset to a multiple of limit (default 1)
	--page-key: string		# pagination page-key of client states to query for
	--reverse		# results are sorted in descending order
	--chain-id: string		# The network chain ID
	--home: string		# directory for config and data (default "/Users/user/.cyber")
	--log_format: string		# The logging format (json|plain) (default "plain")
	--log_level: string		# The logging level (trace|debug|info|warn|error|fatal|panic) (default "info")
	--trace		# print out full stack trace on errors
]