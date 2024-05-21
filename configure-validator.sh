#!/bin/bash
./openos-keygen new --no-passphrase -o ~/.openos/identity.json
./openos-keygen new --no-passphrase -o ~/.openos/vote.json
./openos-keygen new --no-passphrase -o ~/.openos/withdrawer.json
./openos-keygen new --no-passphrase -o ~/.openos/stake.json
./openos config set --keypair ~/.openos/identity.json


pubkey=$(./openos-keygen pubkey ~/.openos/identity.json)

echo "1. Move some  BTG to address $pubkey!"

echo "command: ./openos transfer --keypair ~/.openos/identity.json  --allow-unfunded-recipient $pubkey 1000000"
echo "2. Create vote-account!"

echo "command: ./openos create-vote-account --commission 15 --keypair ~/.openos/identity.json --url https://api.mainnet.openverse.network ~/.openos/vote.json ~/.openos/identity.json ~/.openos/withdrawer.json"
