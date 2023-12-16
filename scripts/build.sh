#!/bin/bash 

mkdir -p bin
cd albatross 
cargo build --release --bin nimiq-client 
cp target/release/nimiq-client ../bin/nimiq-client
cd ..