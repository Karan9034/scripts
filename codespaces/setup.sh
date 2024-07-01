#!/bin/bash

#################################
## Run using:                  ##
## `chmod +x setup.sh`         ##
## `. ./setup.sh`              ##
#################################

# Install Hardhat
npm i -g hardhat

#Install Foundry
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup

# Install Slither
python3 -m pip install slither-analyzer

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.bashrc

# Install Aderyn
cargo install aderyn
