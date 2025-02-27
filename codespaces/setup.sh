#!/bin/bash

#################################
## Run using:                  ##
## `chmod +x setup.sh`         ##
## `. ./setup.sh`              ##
#################################

# Install Hardhat
# Can use hardhat cli using npx
# npm i -g hardhat

# Install Foundry
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup

# Install Huff
curl -L get.huff.sh | bash
source ~/.bashrc
huffup

# Install Slither
python3 -m pip install slither-analyzer

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.bashrc

# Install Aderyn
cargo install aderyn

# Install Solana CLI
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"

# Install AVM
cargo install --git https://github.com/coral-xyz/anchor avm --force
# Install Anchor CLI
avm install latest
avm use latest
