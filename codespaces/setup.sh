#!/bin/bash

#################################
## Run using:                  ##
## `chmod +x setup.sh`         ##
## `. ./setup.sh`              ##
#################################

# Install Hardhat
# Can use hardhat cli using npx
# npm i -g hardhat

#Install Foundry & Huff
curl -L https://foundry.paradigm.xyz | bash
curl -L get.huff.sh | bash
source ~/.bashrc
foundryup
huffup

# Install Slither
python3 -m pip install slither-analyzer

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.bashrc

# Install Aderyn
cargo install aderyn
