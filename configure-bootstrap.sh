#!/bin/bash
mkdir ~/.openos
./openos-keygen new --no-passphrase -o ~/.openos/identity.json
./openos-keygen new --no-passphrase -o ~/.openos/vote.json
./openos-keygen new --no-passphrase -o ~/.openos/stake.json

echo "creating genesis block"

./openos-genesis \
    --max-genesis-archive-unpacked-size 1073741824 \
    --enable-warmup-epochs \
    --bootstrap-validator ~/.openos/identity.json ~/.openos/vote.json ~/.openos/stake.json \
    --bpf-program TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA BPFLoader2111111111111111111111111111111111 programs/spl_token-3.5.0.so \
    --bpf-program TokenzQdBNbLqP5VEhdkAS6EPFLC1PHnBqCXEpPxuEb BPFLoaderUpgradeab1e11111111111111111111111 programs/spl_token-2022-0.9.0.so \
    --bpf-program Memo1UhkJRfHyvLMcVucJwxXeuD728EqVDDwQDxFMNo BPFLoader1111111111111111111111111111111111 programs/spl_memo-1.0.0.so \
    --bpf-program MemoSq4gqABAXKb96qnH8TysNcWxMyWCqXgDLGmfcHr BPFLoader2111111111111111111111111111111111 programs/spl_memo-3.0.0.so \
    --bpf-program ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL BPFLoader2111111111111111111111111111111111 programs/spl_associated-token-account-1.1.2.so \
    --bpf-program Feat1YXHhH6t1juaWF74WLcfv4XoNocjXA6sPWHNgAse BPFLoader2111111111111111111111111111111111 programs/spl_feature-proposal-1.0.0.so \
    --ledger ~/.openos/ledger \
    --faucet-pubkey ~/.openos/identity.json \
    --faucet-lamports 90000000000000000 \
    --hashes-per-tick auto \
    --bootstrap-validator-stake-lamports 10000000000000000 \
    --cluster-type mainnet \
    --inflation full
