# Add a genesis account to genesis.json
extern "cyber  add-genesis-account" [] 

# Collect genesis txs and output a genesis.json file
extern "cyber  collect-gentxs" [] 

# Create or query an application CLI configuration file
extern "cyber  config" [] 

# Tool for helping with debugging your application
extern "cyber  debug" [] 

# Export state to JSON
extern "cyber  export" [] 

# Generate a genesis tx carrying a self delegation
extern "cyber  gentx" [] 

# Help about any command
extern "cyber  help" [] 

# Initialize private validator, p2p, genesis, and application configuration files
extern "cyber  init" [] 

# Manage your application's keys
extern "cyber  keys" [] 

# Migrate genesis to a specified target version
extern "cyber  migrate" [] 

# Querying subcommands
extern "cyber  query" [] 

# rollback cosmos-sdk and tendermint state by one height
extern "cyber  rollback" [] 

# Run the full node
extern "cyber  start" [] 

# Query remote node for status
extern "cyber  status" [] 

# Tendermint subcommands
extern "cyber  tendermint" [] 

# Initialize files for a simapp testnet
extern "cyber  testnet" [] 

# Transactions subcommands
extern "cyber  tx" [] 

# validates the genesis file at the default location or at the location passed as an arg
extern "cyber  validate-genesis" [] 

# Print the application binary version information
extern "cyber  version" [] 

# Add an encrypted private key (either newly generated or recovered), encrypt it, and save to <name> file
extern "cyber keys add" [] 

# Delete the given keys
extern "cyber keys delete" [] 

# Export private keys
extern "cyber keys export" [] 

# Import private keys into the local keybase
extern "cyber keys import" [] 

# List all keys
extern "cyber keys list" [] 

# Migrate keys from the legacy (db-based) Keybase
extern "cyber keys migrate" [] 

# Compute the bip39 mnemonic for some input entropy
extern "cyber keys mnemonic" [] 

# Parse address from hex to bech32 and vice versa
extern "cyber keys parse" [] 

# Retrieve key information by name or address
extern "cyber keys show" [] 

# Remove all the data and WAL
extern "cyber tendermint reset-state" [] 

# Shows this node's tendermint validator consensus address
extern "cyber tendermint show-address" [] 

# Show this node's ID
extern "cyber tendermint show-node-id" [] 

# Show this node's tendermint validator info
extern "cyber tendermint show-validator" [] 

# (unsafe) Remove all the data and WAL, reset this node's validator to genesis state
extern "cyber tendermint unsafe-reset-all" [] 

# Print tendermint libraries' version
extern "cyber tendermint version" [] 

# Funds the community pool with the specified amount
extern "cyber tx distribution fund-community-pool" [] 

# change the default withdraw address for rewards associated with an address
extern "cyber tx distribution set-withdraw-addr" [] 

# withdraw all delegations rewards for a delegator
extern "cyber tx distribution withdraw-all-rewards" [] 

# Withdraw rewards from a given delegation address, and optionally withdraw validator commission if the delegation address given is a validator operator
extern "cyber tx distribution withdraw-rewards" [] 

# Create cyberlink
extern "cyber tx graph cyberlink" [] 

# create new IBC client
extern "cyber tx ibc client create" [] 

# submit a client misbehaviour
extern "cyber tx ibc client misbehaviour" [] 

# update existing client with a header
extern "cyber tx ibc client update" [] 

# upgrade an IBC client
extern "cyber tx ibc client upgrade" [] 

# Send funds from one account to another. Note, the'--from' flag is
extern "cyber tx bank send" [] 

# Query for account by address
extern "cyber query auth account" [] 

# Query all the accounts
extern "cyber query auth accounts" [] 

# Query the current auth parameters
extern "cyber query auth params" [] 

# query grants for a granter-grantee pair and optionally a msg-type-url
extern "cyber query authz grants" [] 

# query authorization grants granted to a grantee
extern "cyber query authz grants-by-grantee" [] 

# query authorization grants granted by granter
extern "cyber query authz grants-by-granter" [] 

# Query all channels
extern "cyber query ibc channel channels" [] 

# Query the client state associated with a channel
extern "cyber query ibc channel client-state" [] 

# Query all channels associated with a connection
extern "cyber query ibc channel connections" [] 

# Query a channel end
extern "cyber query ibc channel end" [] 

# Query a next receive sequence
extern "cyber query ibc channel next-sequence-receive" [] 

# Query a packet acknowledgement
extern "cyber query ibc channel packet-ack" [] 

# Query a packet commitment
extern "cyber query ibc channel packet-commitment" [] 

# Query all packet commitments associated with a channel
extern "cyber query ibc channel packet-commitments" [] 

# Query a packet receipt
extern "cyber query ibc channel packet-receipt" [] 

# Query all the unreceived acks associated with a channel
extern "cyber query ibc channel unreceived-acks" [] 

# Query all the unreceived packets associated with a channel
extern "cyber query ibc channel unreceived-packets" [] 

# Query backlinks of given particle
extern "cyber query rank backlinks" [] 

# Query is link exist between particles for given account
extern "cyber query rank is-exist" [] 

# Query is any link exist between particles
extern "cyber query rank is-exist-any" [] 

# Query the current karma of given neuron
extern "cyber query rank karma" [] 

# Query the current negentropy of given particle
extern "cyber query rank negentropy" [] 

# Query the current rank parameters
extern "cyber query rank params" [] 

# Query the current rank of given particle
extern "cyber query rank rank" [] 

# Query search of given particle
extern "cyber query rank search" [] 

# Query top
extern "cyber query rank top" [] 

# Query distribution validator commission
extern "cyber query distribution commission" [] 

# Query the amount of coins in the community pool
extern "cyber query distribution community-pool" [] 

# Query distribution params
extern "cyber query distribution params" [] 

# Query all distribution delegator rewards or rewards from a particular validator
extern "cyber query distribution rewards" [] 

# Query distribution validator slashes
extern "cyber query distribution slashes" [] 

# Query distribution outstanding (un-withdrawn) rewards for a validator and all their delegations
extern "cyber query distribution validator-outstanding-rewards" [] 

# Query a delegation based on address and validator address
extern "cyber query staking delegation" [] 

# Query all delegations made by one delegator
extern "cyber query staking delegations" [] 

# Query all delegations made to one validator
extern "cyber query staking delegations-to" [] 

# Query historical info at given height
extern "cyber query staking historical-info" [] 

# Query the current staking parameters information
extern "cyber query staking params" [] 

# Query the current staking pool values
extern "cyber query staking pool" [] 

# Query a redelegation record based on delegator and a source and destination validator address
extern "cyber query staking redelegation" [] 

# Query all redelegations records for one delegator
extern "cyber query staking redelegations" [] 

# Query all outgoing redelegatations from a validator
extern "cyber query staking redelegations-from" [] 

# Query an unbonding-delegation record based on delegator and validator address
extern "cyber query staking unbonding-delegation" [] 

# Query all unbonding-delegations records for one delegator
extern "cyber query staking unbonding-delegations" [] 

# Query all unbonding delegatations from a validator
extern "cyber query staking unbonding-delegations-from" [] 

# Query a validator
extern "cyber query staking validator" [] 

# Query for all validators
extern "cyber query staking validators" [] 

# IBC channel transaction subcommands
extern "cyber tx ibc channel" [] 

# IBC client transaction subcommands
extern "cyber tx ibc client" [] 

# Create liquidity pool and deposit coins
extern "cyber tx liquidity create-pool" [] 

# Deposit coins to a liquidity pool
extern "cyber tx liquidity deposit" [] 

# Swap offer coin with demand coin from the liquidity pool with the given order price
extern "cyber tx liquidity swap" [] 

# Withdraw pool coin from the specified liquidity pool
extern "cyber tx liquidity withdraw" [] 

# execute tx on behalf of granter account
extern "cyber tx authz exec" [] 

# Grant authorization to an address
extern "cyber tx authz grant" [] 

# revoke authorization
extern "cyber tx authz revoke" [] 

# Query the current minting annual provisions value
extern "cyber query mint annual-provisions" [] 

# Query the current minting inflation value
extern "cyber query mint inflation" [] 

# Query the current minting parameters
extern "cyber query mint params" [] 

# Query resources return on investmint
extern "cyber query resources investmint" [] 

# Query the current resources module parameters information
extern "cyber query resources params" [] 

# Grant Fee allowance to an address
extern "cyber tx feegrant grant" [] 

# revoke fee-grant
extern "cyber tx feegrant revoke" [] 

# Clears admin for a contract to prevent further migrations
extern "cyber tx wasm clear-contract-admin" [] 

# Execute a command on a wasm contract
extern "cyber tx wasm execute" [] 

# Instantiate a wasm contract
extern "cyber tx wasm instantiate" [] 

# Migrate a wasm contract to a new code version
extern "cyber tx wasm migrate" [] 

# Set new admin for a contract
extern "cyber tx wasm set-contract-admin" [] 

# Upload a wasm binary
extern "cyber tx wasm store" [] 

# Submit proof that an invariant broken to halt the chain
extern "cyber tx crisis invariant-broken" [] 

# Query the current dmn module parameters information
extern "cyber query dmn params" [] 

# Query thought
extern "cyber query dmn thought" [] 

# Query thought stats
extern "cyber query dmn thought-stats" [] 

# Query all thoughts
extern "cyber query dmn thoughts" [] 

# Query all thoughts stats
extern "cyber query dmn thoughts-stats" [] 

# Query the current grid module parameters information
extern "cyber query grid params" [] 

# Query grid route that routes for given source and destination accounts
extern "cyber query grid route" [] 

# Query grid value that routed from source account
extern "cyber query grid routed-from" [] 

# Query grid value that routed to destination account
extern "cyber query grid routed-to" [] 

# Query all grid routes
extern "cyber query grid routes" [] 

# Query all grid routes that made from source account
extern "cyber query grid routes-from" [] 

# Query all grid routes that routed to destination account
extern "cyber query grid routes-to" [] 

# Query for raw parameters by subspace and key
extern "cyber query params subspace" [] 

# IBC channel query subcommands
extern "cyber query ibc channel" [] 

# IBC client query subcommands
extern "cyber query ibc client" [] 

# IBC connection query subcommands
extern "cyber query ibc connection" [] 

# create new validator initialized with a self-delegation to it
extern "cyber tx staking create-validator" [] 

# Delegate liquid tokens to a validator
extern "cyber tx staking delegate" [] 

# edit an existing validator account
extern "cyber tx staking edit-validator" [] 

# Redelegate illiquid tokens from one validator to another
extern "cyber tx staking redelegate" [] 

# Unbond shares from a validator
extern "cyber tx staking unbond" [] 

# Query the bandwidth load
extern "cyber query bandwidth load" [] 

# Query the neuron bandwidth [address]
extern "cyber query bandwidth neuron" [] 

# Query the current bandwidth module parameters information
extern "cyber query bandwidth params" [] 

# Query the bandwidth price
extern "cyber query bandwidth price" [] 

# Query the total bandwidth
extern "cyber query bandwidth total" [] 

# Query details of a single grant
extern "cyber query feegrant grant" [] 

# Query all grants of a grantee
extern "cyber query feegrant grants-by-grantee" [] 

# Query all grants by a granter
extern "cyber query feegrant grants-by-granter" [] 

# Query the graph stats
extern "cyber query graph stats" [] 

# Query details of a liquidity pool batch
extern "cyber query liquidity batch" [] 

# Query the deposit messages on the liquidity pool batch
extern "cyber query liquidity deposit" [] 

# Query all deposit messages of the liquidity pool batch
extern "cyber query liquidity deposits" [] 

# Query the values set as liquidity parameters
extern "cyber query liquidity params" [] 

# Query details of a liquidity pool
extern "cyber query liquidity pool" [] 

# Query for all liquidity pools
extern "cyber query liquidity pools" [] 

# Query for the swap message on the batch of the liquidity pool specified pool-id and msg-index
extern "cyber query liquidity swap" [] 

# Query all swap messages in the liquidity pool batch
extern "cyber query liquidity swaps" [] 

# Query the withdraw messages in the liquidity pool batch
extern "cyber query liquidity withdraw" [] 

# Query for all withdraw messages on the liquidity pool batch
extern "cyber query liquidity withdraws" [] 

# Query the current slashing parameters
extern "cyber query slashing params" [] 

# Query a validator's signing information
extern "cyber query slashing signing-info" [] 

# Query signing information of all validators
extern "cyber query slashing signing-infos" [] 

# Investmint basic resource with the return of advanced system resource
extern "cyber tx resources investmint" [] 

# Query the denom hash info from a given denom trace
extern "cyber query ibc-transfer denom-hash" [] 

# Query the denom trace info from a given trace hash
extern "cyber query ibc-transfer denom-trace" [] 

# Query the trace info for all token denominations
extern "cyber query ibc-transfer denom-traces" [] 

# Get the escrow address for a channel
extern "cyber query ibc-transfer escrow-address" [] 

# Query the current ibc-transfer parameters
extern "cyber query ibc-transfer params" [] 

# Cancel the current software upgrade proposal
extern "cyber tx gov submit-proposal cancel-software-upgrade" [] 

# Submit a clear admin for a contract to prevent further migrations proposal
extern "cyber tx gov submit-proposal clear-contract-admin" [] 

# Submit a community pool spend proposal
extern "cyber tx gov submit-proposal community-pool-spend" [] 

# Submit a execute wasm contract proposal (run by any address)
extern "cyber tx gov submit-proposal execute-contract" [] 

# Submit an IBC upgrade proposal
extern "cyber tx gov submit-proposal ibc-upgrade" [] 

# Submit an instantiate wasm contract proposal
extern "cyber tx gov submit-proposal instantiate-contract" [] 

# Submit a migrate wasm contract to a new code version proposal
extern "cyber tx gov submit-proposal migrate-contract" [] 

# Submit a parameter change proposal
extern "cyber tx gov submit-proposal param-change" [] 

# Submit a pin code proposal for pinning a code to cache
extern "cyber tx gov submit-proposal pin-codes" [] 

# Submit a new admin for a contract proposal
extern "cyber tx gov submit-proposal set-contract-admin" [] 

# Submit a software upgrade proposal
extern "cyber tx gov submit-proposal software-upgrade" [] 

# Submit a sudo wasm contract proposal (to call privileged commands)
extern "cyber tx gov submit-proposal sudo-contract" [] 

# Submit a unpin code proposal for unpinning a code to cache
extern "cyber tx gov submit-proposal unpin-codes" [] 

# Submit an update IBC client proposal
extern "cyber tx gov submit-proposal update-client" [] 

# Submit an update instantiate config proposal.
extern "cyber tx gov submit-proposal update-instantiate-config" [] 

# Submit a wasm binary proposal
extern "cyber tx gov submit-proposal wasm-store" [] 

# Query the consensus state of a client at a given height
extern "cyber query ibc client consensus-state" [] 

# Query all the consensus states of a client.
extern "cyber query ibc client consensus-states" [] 

# Query the latest header of the running chain
extern "cyber query ibc client header" [] 

# Query the current ibc client parameters
extern "cyber query ibc client params" [] 

# Query the self consensus state for this chain
extern "cyber query ibc client self-consensus-state" [] 

# Query a client state
extern "cyber query ibc client state" [] 

# Query all available light clients
extern "cyber query ibc client states" [] 

# Query client status
extern "cyber query ibc client status" [] 

# Query all connections
extern "cyber query ibc connection connections" [] 

# Query stored connection end
extern "cyber query ibc connection end" [] 

# Query stored client connection paths
extern "cyber query ibc connection path" [] 

# Prints out all internal state of a contract given its address
extern "cyber query wasm contract-state all" [] 

# Prints out internal state for key of a contract given its address
extern "cyber query wasm contract-state raw" [] 

# Calls contract with given address with query data and prints the returned result
extern "cyber query wasm contract-state smart" [] 

# block header for height at which a completed upgrade was applied
extern "cyber query upgrade applied" [] 

# get the list of module versions
extern "cyber query upgrade module_versions" [] 

# get upgrade plan (if one exists)
extern "cyber query upgrade plan" [] 

# Transfer a fungible token through IBC
extern "cyber tx ibc-transfer transfer" [] 

# Create grid route from your address to destination address with provided name
extern "cyber tx grid create-route" [] 

# Delete your grid route to given destination address
extern "cyber tx grid delete-route" [] 

# Set value of grid route to destination address
extern "cyber tx grid edit-route" [] 

# Edit name of grid route to given destination address
extern "cyber tx grid edit-route-name" [] 

# Downloads wasm bytecode for given code id
extern "cyber query wasm code" [] 

# Prints out metadata of a code id
extern "cyber query wasm code-info" [] 

# Prints out metadata of a contract given its address
extern "cyber query wasm contract" [] 

# Prints out the code history for a contract given its address
extern "cyber query wasm contract-history" [] 

# Querying commands for the wasm module
extern "cyber query wasm contract-state" [] 

# Get libwasmvm version
extern "cyber query wasm libwasmvm-version" [] 

# List all wasm bytecode on the chain
extern "cyber query wasm list-code" [] 

# List wasm all bytecode on the chain for given code id
extern "cyber query wasm list-contract-by-code" [] 

# List all pinned code ids
extern "cyber query wasm pinned" [] 

# unjail validator previously jailed for downtime
extern "cyber tx slashing unjail" [] 

# Query for account balances by address
extern "cyber query bank balances" [] 

# Query the client metadata for coin denominations
extern "cyber query bank denom-metadata" [] 

# Query the total supply of coins of the chain
extern "cyber query bank total" [] 

# Authorization transactions subcommands
extern "cyber tx authz" [] 

# Bank transaction subcommands
extern "cyber tx bank" [] 

# Broadcast transactions generated offline
extern "cyber tx broadcast" [] 

# Crisis transactions subcommands
extern "cyber tx crisis" [] 

# Decode a binary encoded transaction string
extern "cyber tx decode" [] 

# Distribution transactions subcommands
extern "cyber tx distribution" [] 

# Encode transactions generated offline
extern "cyber tx encode" [] 

# Evidence transaction subcommands
extern "cyber tx evidence" [] 

# Feegrant transactions subcommands
extern "cyber tx feegrant" [] 

# Governance transactions subcommands
extern "cyber tx gov" [] 

# Graph transaction subcommands
extern "cyber tx graph" [] 

# grid transactions subcommands
extern "cyber tx grid" [] 

# IBC transaction subcommands
extern "cyber tx ibc" [] 

# IBC fungible token transfer transaction subcommands
extern "cyber tx ibc-transfer" [] 

# Liquidity transaction subcommands
extern "cyber tx liquidity" [] 

# Generate multisig signatures for transactions generated offline
extern "cyber tx multisign" [] 

# Assemble multisig transactions in batch from batch signatures
extern "cyber tx multisign-batch" [] 

# resources transactions subcommands
extern "cyber tx resources" [] 

# Sign a transaction generated offline
extern "cyber tx sign" [] 

# Sign transaction batch files
extern "cyber tx sign-batch" [] 

# Slashing transaction subcommands
extern "cyber tx slashing" [] 

# Staking transaction subcommands
extern "cyber tx staking" [] 

# validate transactions signatures
extern "cyber tx validate-signatures" [] 

# Vesting transaction subcommands
extern "cyber tx vesting" [] 

# Wasm transaction subcommands
extern "cyber tx wasm" [] 

# Deposit tokens for an active proposal
extern "cyber tx gov deposit" [] 

# Submit a proposal along with an initial deposit
extern "cyber tx gov submit-proposal" [] 

# Vote for an active proposal, options: yes/no/no_with_veto/abstain
extern "cyber tx gov vote" [] 

# Vote for an active proposal, options: yes/no/no_with_veto/abstain
extern "cyber tx gov weighted-vote" [] 

# Query for account by address
extern "cyber query account" [] 

# Querying commands for the auth module
extern "cyber query auth" [] 

# Querying commands for the authz module
extern "cyber query authz" [] 

# Querying commands for the bandwidth module
extern "cyber query bandwidth" [] 

# Querying commands for the bank module
extern "cyber query bank" [] 

# Get verified data for a the block at given height
extern "cyber query block" [] 

# Querying commands for the distribution module
extern "cyber query distribution" [] 

# Querying commands for the dmn module
extern "cyber query dmn" [] 

# Query for evidence by hash or for all (paginated) submitted evidence
extern "cyber query evidence" [] 

# Querying commands for the feegrant module
extern "cyber query feegrant" [] 

# Querying commands for the governance module
extern "cyber query gov" [] 

# Querying commands for the graph module
extern "cyber query graph" [] 

# Querying commands for the grid module
extern "cyber query grid" [] 

# Querying commands for the IBC module
extern "cyber query ibc" [] 

# IBC fungible token transfer query subcommands
extern "cyber query ibc-transfer" [] 

# Querying commands for the liquidity module
extern "cyber query liquidity" [] 

# Querying commands for the minting module
extern "cyber query mint" [] 

# Querying commands for the params module
extern "cyber query params" [] 

# Querying commands for the rank module
extern "cyber query rank" [] 

# Querying commands for the resources module
extern "cyber query resources" [] 

# Querying commands for the slashing module
extern "cyber query slashing" [] 

# Querying commands for the staking module
extern "cyber query staking" [] 

# Get the full tendermint validator set at given height
extern "cyber query tendermint-validator-set" [] 

# Query for a transaction by hash, "<addr>/<seq>" combination or comma-separated signatures in a committed block
extern "cyber query tx" [] 

# Query for paginated transactions that match a set of events
extern "cyber query txs" [] 

# Querying commands for the upgrade module
extern "cyber query upgrade" [] 

# Querying commands for the wasm module
extern "cyber query wasm" [] 

# Create a new vesting account funded with an allocation of tokens.
extern "cyber tx vesting create-vesting-account" [] 

# Convert an address between hex and bech32
extern "cyber debug addr" [] 

# Decode a pubkey from proto JSON
extern "cyber debug pubkey" [] 

# Convert raw bytes output (eg. [10 21 13 255]) to hex
extern "cyber debug raw-bytes" [] 

# Query details of a deposit
extern "cyber query gov deposit" [] 

# Query deposits on a proposal
extern "cyber query gov deposits" [] 

# Query the parameters (voting|tallying|deposit) of the governance process
extern "cyber query gov param" [] 

# Query the parameters of the governance process
extern "cyber query gov params" [] 

# Query details of a single proposal
extern "cyber query gov proposal" [] 

# Query proposals with optional filters
extern "cyber query gov proposals" [] 

# Query the proposer of a governance proposal
extern "cyber query gov proposer" [] 

# Get the tally of a proposal vote
extern "cyber query gov tally" [] 

# Query details of a single vote
extern "cyber query gov vote" [] 

# Query votes on a proposal
extern "cyber query gov votes" [] 




# Run `rustc --explain CODE`
extern "cargo" [
	--explain					# Run `rustc --explain CODE`
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--version(-V)					# Print version info and exit
	--list					# List installed commands
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--quiet(-q)					# No output printed to stdout
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	--help(-h)					# Prints help information
	...args
]

# Execute all benchmarks of a local package
extern "cargo bench" [
	--bin					# Benchmark only the specified binary
	--example					# Benchmark only the specified example
	--test					# Benchmark only the specified test target
	--bench					# Benchmark only the specified bench target
	--package(-p)					# Package to run benchmarks for
	--exclude					# Exclude packages from the benchmark
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--lib					# Benchmark only this packages library
	--bins					# Benchmark all binaries
	--examples					# Benchmark all examples
	--tests					# Benchmark all tests
	--benches					# Benchmark all benches
	--all-targets					# Benchmark all targets
	--no-run					# Compile, but dont run benchmarks
	--all					# Alias for --workspace (deprecated)
	--workspace					# Benchmark all packages in the workspace
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--no-fail-fast					# Run all benchmarks regardless of failure
	--unit-graph					# Output build graph in JSON (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Compile a local package and all of its dependencies
extern "cargo build" [
	--package(-p)					# Package to build (see `cargo help pkgid`)
	--exclude					# Exclude packages from the build
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Build only the specified binary
	--example					# Build only the specified example
	--test					# Build only the specified test target
	--bench					# Build only the specified bench target
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--out-dir					# Copy final artifacts to this directory (unstable)
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--all					# Alias for --workspace (deprecated)
	--workspace					# Build all packages in the workspace
	--lib					# Build only this packages library
	--bins					# Build all binaries
	--examples					# Build all examples
	--tests					# Build all tests
	--benches					# Build all benches
	--all-targets					# Build all targets
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--build-plan					# Output the build plan in JSON (unstable)
	--unit-graph					# Output build graph in JSON (unstable)
	--future-incompat-report					# Ouputs a future incompatibility report at the end of the build (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Check a local package and all of its dependencies for errors
extern "cargo check" [
	--package(-p)					# Package(s) to check
	--exclude					# Exclude packages from the check
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Check only the specified binary
	--example					# Check only the specified example
	--test					# Check only the specified test target
	--bench					# Check only the specified bench target
	--profile					# Check artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Check for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--all					# Alias for --workspace (deprecated)
	--workspace					# Check all packages in the workspace
	--lib					# Check only this packages library
	--bins					# Check all binaries
	--examples					# Check all examples
	--tests					# Check all tests
	--benches					# Check all benches
	--all-targets					# Check all targets
	--release					# Check artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--unit-graph					# Output build graph in JSON (unstable)
	--future-incompat-report					# Ouputs a future incompatibility report at the end of the build (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Remove artifacts that cargo has generated in the past
extern "cargo clean" [
	--package(-p)					# Package to clean artifacts for
	--manifest-path					# Path to Cargo.toml
	--target					# Target triple to clean output for
	--target-dir					# Directory for all generated artifacts
	--profile					# Clean artifacts of the specified profile
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--release					# Whether or not to clean release artifacts
	--doc					# Whether or not to clean just the documentation directory
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Reports any crates which will eventually stop compiling
extern "cargo describe-future-incompatibilities" [
	--id					# identifier of the report [generated by a Cargo command invocation
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Build a packages documentation
extern "cargo doc" [
	--package(-p)					# Package to document
	--exclude					# Exclude packages from the build
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Document only the specified binary
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--open					# Opens the docs in a browser after the operation
	--all					# Alias for --workspace (deprecated)
	--workspace					# Document all packages in the workspace
	--no-deps					# Dont build documentation for dependencies
	--document-private-items					# Document private items
	--lib					# Document only this packages library
	--bins					# Document all binaries
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--unit-graph					# Output build graph in JSON (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	--package(-p)					# Package to document
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Build only the specified binary
	--example					# Build only the specified example
	--test					# Build only the specified test target
	--bench					# Build only the specified bench target
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--open					# Opens the docs in a browser after the operation
	--lib					# Build only this packages library
	--bins					# Build all binaries
	--examples					# Build all examples
	--tests					# Build all tests
	--benches					# Build all benches
	--all-targets					# Build all targets
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--unit-graph					# Output build graph in JSON (unstable)
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Fetch dependencies of a package from the network
extern "cargo fetch" [
	--manifest-path					# Path to Cargo.toml
	--target					# Fetch dependencies for the target triple
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Automatically fix lint warnings reported by rustc
extern "cargo fix" [
	--package(-p)					# Package(s) to fix
	--exclude					# Exclude packages from the fixes
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Fix only the specified binary
	--example					# Fix only the specified example
	--test					# Fix only the specified test target
	--bench					# Fix only the specified bench target
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Fix for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--all					# Alias for --workspace (deprecated)
	--workspace					# Fix all packages in the workspace
	--lib					# Fix only this packages library
	--bins					# Fix all binaries
	--examples					# Fix all examples
	--tests					# Fix all tests
	--benches					# Fix all benches
	--all-targets					# Fix all targets (default)
	--release					# Fix artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--broken-code					# Fix code even if it already has compiler errors
	--edition					# Fix in preparation for the next edition
	--edition-idioms					# Fix warnings to migrate to the idioms of an edition
	--allow-no-vcs					# Fix code even if a VCS was not detected
	--allow-dirty					# Fix code even if the working directory is dirty
	--allow-staged					# Fix code even if the working directory has staged changes
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Generate the lockfile for a package
extern "cargo generate-lockfile" [
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# This subcommand has been removed
extern "cargo git-checkout" [
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Create a new cargo package in an existing directory
extern "cargo init" [
	--registry					# Registry to use
	--name					# Set the resulting package name, defaults to the directory name
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--bin					# Use a binary (application) template [default]
	--lib					# Use a library template
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Install a Rust binary. Default location is $HOME/.cargo/bin
extern "cargo install" [
	--version					# Specify a version to install
	--git					# Git URL to install the specified crate from
	--branch					# Branch to use when installing from git
	--tag					# Tag to use when installing from git
	--rev					# Specific commit to use when installing from git
	--path					# Filesystem path to local crate to install
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--features					# Space or comma separated list of features to activate
	--profile					# Install artifacts with the specified profile
	--bin					# Install only the specified binary
	--example					# Install only the specified example
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--root					# Directory to install packages into
	--index					# Registry index to install from
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--list					# list all installed packages and their versions
	--force(-f)					# Force overwriting existing crates or binaries
	--no-track					# Do not save tracking information
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--debug					# Build in debug mode instead of release mode
	--bins					# Install all binaries
	--examples					# Install all examples
	--help(-h)					# Prints help information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	--package(-p)					# Package to uninstall
	--bin					# Only uninstall the binary NAME
	--root					# Directory to uninstall packages from
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Print a JSON representation of a Cargo.toml files location
extern "cargo locate-project" [
	--manifest-path					# Path to Cargo.toml
	--message-format					# Output representation [possible values: json, plain]
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--workspace					# Locate Cargo.toml of the workspace root
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Save an api token from the registry locally. If token is not specified, it will be read from stdin.
extern "cargo login" [
	--host					# Host to set the token for
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Remove an API token from the registry locally
extern "cargo logout" [
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
extern "cargo metadata" [
	--features					# Space or comma separated list of features to activate
	--filter-platform					# Only include resolve dependencies matching the given target-triple
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# Do not print cargo log messages
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--no-deps					# Output information only about the workspace members and dont fetch dependencies
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Create a new cargo package at <path>
extern "cargo new" [
	--registry					# Registry to use
	--name					# Set the resulting package name, defaults to the directory name
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--bin					# Use a binary (application) template [default]
	--lib					# Use a library template
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Manage the owners of a crate on the registry
extern "cargo owner" [
	--add(-a)					# Name of a user or team to invite as an owner
	--remove(-r)					# Name of a user or team to remove as an owner
	--index					# Registry index to modify owners for
	--token					# API token to use when authenticating
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--list(-l)					# List owners of a crate
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Assemble the local package into a distributable tarball
extern "cargo package" [
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--features					# Space or comma separated list of features to activate
	--manifest-path					# Path to Cargo.toml
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--list(-l)					# Print files included in a package without making one
	--no-verify					# Dont verify the contents by building them
	--no-metadata					# Ignore warnings about a lack of human-usable metadata
	--allow-dirty					# Allow dirty working directories to be packaged
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Print a fully qualified package specification
extern "cargo pkgid" [
	--package(-p)					# Argument to get the package ID specifier for
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Upload a package to the registry
extern "cargo publish" [
	--index					# Registry index URL to upload the package to
	--host					# DEPRECATED, renamed to --index
	--token					# Token to use when uploading
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--features					# Space or comma separated list of features to activate
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--registry					# Registry to publish to
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--no-verify					# Dont verify the contents by building them
	--allow-dirty					# Allow dirty working directories to be packaged
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--dry-run					# Perform all checks without uploading
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Print a JSON representation of a Cargo.toml manifest.
extern "cargo read-manifest" [
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Run a binary or example of the local package
extern "cargo run" [
	--bin					# Name of the bin target to run
	--example					# Name of the example target to run
	--package(-p)					# Package with the target to run
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--unit-graph					# Output build graph in JSON (unstable)
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Compile a package, and pass extra options to the compiler
extern "cargo rustc" [
	--package(-p)					# Package to build
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Build only the specified binary
	--example					# Build only the specified example
	--test					# Build only the specified test target
	--bench					# Build only the specified bench target
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Target triple which compiles will be for
	--print					# Output compiler information without compiling
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--lib					# Build only this packages library
	--bins					# Build all binaries
	--examples					# Build all examples
	--tests					# Build all tests
	--benches					# Build all benches
	--all-targets					# Build all targets
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--unit-graph					# Output build graph in JSON (unstable)
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--future-incompat-report					# Ouputs a future incompatibility report at the end of the build (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Build a packages documentation, using specified custom flags.
extern "cargo rustdoc" [
	--package(-p)					# Package to document
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--bin					# Build only the specified binary
	--example					# Build only the specified example
	--test					# Build only the specified test target
	--bench					# Build only the specified bench target
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--open					# Opens the docs in a browser after the operation
	--lib					# Build only this packages library
	--bins					# Build all binaries
	--examples					# Build all examples
	--tests					# Build all tests
	--benches					# Build all benches
	--all-targets					# Build all targets
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--unit-graph					# Output build graph in JSON (unstable)
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Search packages in crates.io
extern "cargo search" [
	--index					# Registry index URL to upload the package to
	--host					# DEPRECATED, renamed to --index
	--limit					# Limit the number of results (default: 10, max: 100)
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Execute all unit and integration tests and build examples of a local package
extern "cargo test" [
	--bin					# Test only the specified binary
	--example					# Test only the specified example
	--test					# Test only the specified test target
	--bench					# Test only the specified bench target
	--package(-p)					# Package to run tests for
	--exclude					# Exclude packages from the test
	--jobs(-j)					# Number of parallel jobs, defaults to # of CPUs
	--profile					# Build artifacts with the specified profile
	--features					# Space or comma separated list of features to activate
	--target					# Build for the target triple
	--target-dir					# Directory for all generated artifacts
	--manifest-path					# Path to Cargo.toml
	--message-format					# Error format
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# Display one character per test instead of one line
	--lib					# Test only this packages library unit tests
	--bins					# Test all binaries
	--examples					# Test all examples
	--tests					# Test all tests
	--benches					# Test all benches
	--all-targets					# Test all targets
	--doc					# Test only this librarys documentation
	--no-run					# Compile, but dont run tests
	--no-fail-fast					# Run all tests regardless of failure
	--all					# Alias for --workspace (deprecated)
	--workspace					# Test all packages in the workspace
	--release					# Build artifacts in release mode, with optimizations
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--ignore-rust-version					# Ignore `rust-version` specification in packages (unstable)
	--unit-graph					# Output build graph in JSON (unstable)
	--future-incompat-report					# Ouputs a future incompatibility report at the end of the build (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Display a tree visualization of a dependency graph
extern "cargo tree" [
	--manifest-path					# Path to Cargo.toml
	--package(-p)					# Package to be used as the root of the tree
	--exclude					# Exclude specific workspace members
	--features					# Space or comma separated list of features to activate
	--target					# Filter dependencies matching the given target-triple (default host platform). Pass `all` to include all targets.
	--edges(-e)					# The kinds of dependencies to display (features, normal, build, dev, all, no-dev, no-build, no-normal)
	--invert(-i)					# Invert the tree direction and focus on the given package
	--format(-f)					# Format string used for printing dependencies
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# Suppress status messages
	--workspace					# Display the tree for all packages in the workspace
	--all(-a)
	--all-targets
	--all-features					# Activate all available features
	--no-default-features					# Do not activate the `default` feature
	--no-dev-dependencies
	--no-indent
	--prefix-depth
	--no-dedupe					# Do not de-duplicate (repeats all shared dependencies)
	--duplicates(-d)					# Show only dependencies which come in multiple versions (implies -i)
	--version(-V)
	--help(-h)					# Prints help information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Remove a Rust binary
extern "cargo uninstall" [
	--package(-p)					# Package to uninstall
	--bin					# Only uninstall the binary NAME
	--root					# Directory to uninstall packages from
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Update dependencies as recorded in the local lock file
extern "cargo update" [
	--package(-p)					# Package to update
	--precise					# Update a single dependency to exactly PRECISE when used with -p
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--workspace(-w)					# Only update the workspace packages
	--aggressive					# Force updating all dependencies of SPEC as well when used with -p
	--dry-run					# Dont actually write the lockfile
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Vendor all dependencies for a project locally
extern "cargo vendor" [
	--manifest-path					# Path to Cargo.toml
	--sync(-s)					# Additional `Cargo.toml` to sync and vendor
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--no-delete					# Dont delete older crates in the vendor directory
	--respect-source-config					# Respect `[source]` config in `.cargo/config`
	--versioned-dirs					# Always include version in subdir name
	--no-merge-sources
	--relative-path
	--only-git-deps
	--disallow-duplicates
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Check correctness of crate manifest
extern "cargo verify-project" [
	--manifest-path					# Path to Cargo.toml
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Show version information
extern "cargo version" [
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Remove a pushed crate from the index
extern "cargo yank" [
	--vers					# The version to yank or un-yank
	--index					# Registry index to yank from
	--token					# API token to use when authenticating
	--registry					# Registry to use
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--quiet(-q)					# No output printed to stdout
	--undo					# Undo a yank, putting a version back into the index
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]

# Prints this message or the help of the given subcommand(s)
extern "cargo help" [
	--color					# Coloring: auto, always, never
	--config					# Override a configuration value (unstable)
	--help(-h)					# Prints help information
	--version(-V)					# Prints version information
	--verbose(-v)					# Use verbose output (-vv very verbose/build.rs output)
	--frozen					# Require Cargo.lock and cache are up to date
	--locked					# Require Cargo.lock is up to date
	--offline					# Run without accessing the network
	...args
]