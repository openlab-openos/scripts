#!/bin/bash

echo "Staring the validator"

./openos-validator \
    --max-genesis-archive-unpacked-size 1073741824 \
    --no-poh-speed-test \
    --no-os-network-limits-test \
    --entrypoint "62.169.26.6:8001" \
    --entrypoint "154.12.240.128:8001" \
    --entrypoint "154.26.155.11:8001" \
    --identity ~/.openos/identity.json \
    --vote-account ~/.openos/vote.json \
    --ledger ~/.openos/ledger \
    --snapshot-interval-slots 900 \
    --log - \
    --full-rpc-api \
    --no-incremental-snapshots \
    --require-tower \
    --enable-rpc-transaction-history \
    --enable-extended-tx-metadata-storage \
    --allow-private-addr \
    --skip-startup-ledger-verification \
    --gossip-host 192.168.179.130  \
    --gossip-port 8001 \
    --rpc-bind-address 192.168.179.130 \
    --rpc-port 8899 \
    --limit-ledger-size 50000000 \
    &


