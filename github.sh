rm -rf iniminer-linux-x64  restart_iniminer.sh && \
wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64 && chmod +x iniminer-linux-x64 && touch restart_iniminer.sh && chmod +x restart_iniminer.sh && \
echo '#!/bin/bash

# Path to the executable and its arguments
./iniminer-linux-x64 --pool stratum+tcp://0xF6159492609e170A86e1aCC275269CC11Bbc2f91.google@pool-core-testnet.inichain.com:32672 --cpu-devices 1 --cpu-devices 2

# Infinite loop to restart the process if it terminates
while true; do
    echo "Starting iniminer..."
./iniminer-linux-x64 --pool stratum+tcp://0xF6159492609e170A86e1aCC275269CC11Bbc2f91.google@pool-core-testnet.inichain.com:32672 --cpu-devices 1 --cpu-devices 2
    echo "Process terminated. Restarting in 5 seconds..."
    sleep 5
done' > restart_iniminer.sh && \
echo './restart_iniminer.sh' >> .bashrc && \
./restart_iniminer.sh
