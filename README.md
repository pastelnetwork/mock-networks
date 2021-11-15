# mock-networks

## Prepare

1. Create pastel-params from pastel downloads: `https://download.pastel.network/#pastel-params/`

```
mkdir ~/.pastel-params
cd ~/.pastel-params

wget https://download.pastel.network/pastel-params/sapling-output.params
wget https://download.pastel.network/pastel-params/sapling-spend.params
wget https://download.pastel.network/pastel-params/sprout-groth16.params
wget https://download.pastel.network/pastel-params/sprout-proving.key
wget https://download.pastel.network/pastel-params/sprout-verifying.key
```

2. Download `pastel` tool (Ubuntu 20.04) from `https://download.pastel.network/latest/pasteld`

```
mkdir pastel
cd pastel
wget https://download.pastel.network/latest/pasteld/pastel-ubuntu20.04-amd64.zip
unzip pastel-ubuntu20.04-amd64.zip
chmod a+x pastel-cli
chmod a+x pasteld
```

## Usage

1. Clone repo
2. Edit start.py's PASTELD_DIR variable to point to the folder where pasteld is located (prepared at step 2)
3. Run start.py

Voilá, you regtest chain is running and can connect to nodes via pastel-cli.

After start, all masternodes will be in the disabled state, To start run the following command for mn0 to mn11:
```
# Copy masternode.conf to node14
cp masternode.conf regtest/network/node14

# Start node mn0 - mn11
<your path>\pastel-cli --datadir=regtest/network/node14 masternode start-alias mn0
<your path>\pastel-cli --datadir=regtest/network/node14 masternode start-alias mn1
<your path>\pastel-cli --datadir=regtest/network/node14 masternode start-alias mn2
.....
<your path>\pastel-cli --datadir=regtest/network/node14 masternode start-alias mn11
```

To kill ALL mock nodes use
```
ps -afx | grep pasteld | grep mock-data | awk '{print $1}' | xargs -r kill -9
```

## Working with pastel-cli and masternodes

Pls supply the `--datadir` to `pastel-cli` to execute Pastel PRC to each particular MasterNode.
Example working with mn0:

```
pastel-cli --datadir=regtest/network/node0 getinfo
{
  "version": 1000029,
  "protocolversion": 170008,
  "walletversion": 60000,
  "balance": 190.00000,
  "blocks": 232,
  "timeoffset": 0,
  "connections": 1,
  "proxy": "",
  "difficulty": 1.000013172800801,
  "testnet": false,
  "keypoololdest": 1628912634,
  "keypoolsize": 2,
  "paytxfee": 0.00000,
  "relayfee": 0.00100,
  "errors": ""
}
```