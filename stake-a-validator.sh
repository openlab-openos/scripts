#!/bin/bash

echo "staking"

./openos create-stake-account ~/.openos/stake.json 99500 -k ~/.openos/identity.json 

./openos delegate-stake ~/.openos/stake.json ~/.openos/vote.json -k ~/.openos/identity.json 

echo "stakes will be valid after"
./openos epoch-info
