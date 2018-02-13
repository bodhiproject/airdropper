#!/bin/bash

echo 'Compiling Airdropper.sol into /compiled'
solc --optimize --bin --abi --hashes --allow-paths contracts/* -o compiled --overwrite contracts/Airdropper.sol
