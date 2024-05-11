#!/bin/bash
echo "starting bootstrap validator"

./openos-validator \
    --require-tower \
    --ledger ~/.openos/ledger \
    --snapshot-interval-slots 900 \
    --no-incremental-snapshots \
    --identity ~/.openos/identity.json \
    --vote-account ~/.openos/vote.json \
    --rpc-faucet-address 127.0.0.1:9900 \
    --no-poh-speed-test \
    --no-os-network-limits-test \
    --no-wait-for-vote-to-start-leader \
    --full-rpc-api \
    --allow-private-addr \
    --enable-rpc-transaction-history \
    --enable-extended-tx-metadata-storage \
    --log - \
    --gossip-host 192.168.179.129  \
    --gossip-port 8001 \
    --rpc-bind-address 192.168.179.129 \
    --rpc-port 8899 \
    --limit-ledger-size 100000000 \
    &

#solana-faucet -k faucet.json &
