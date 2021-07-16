# mock-networks

Usage:
1. Clone repo
2. Edit start.py's PASTELD_DIR variable to point to the folder where pasteld is located
3. Run start.py

Voilá, you regtest chain is running and can connect to nodes via pastel-cli.

After start all masternodes will be in the disabled state, To start run the following command for mn0 to mn11:
```
<your path>\pastel-cli --datadir=unzipped/node14 masternode start-alias mn0
<your path>\pastel-cli --datadir=unzipped/node14 masternode start-alias mn1
<your path>\pastel-cli --datadir=unzipped/node14 masternode start-alias mn2
...
<your path>\pastel-cli --datadir=unzipped/node14 masternode start-alias mn10
<your path>\pastel-cli --datadir=unzipped/node14 masternode start-alias mn11
```


To kill ALL mock nodes use
```
ps -afx | grep pasteld | grep mock-data | awk '{print $1}' | xargs -r kill -9
```
