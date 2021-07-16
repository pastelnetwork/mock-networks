# mock-networks

Usage:
1. Clone repo
2. Edit start.py's PASTELD_DIR variable to point to the folder where pasteld is located
3. Run start.py

Voilá, you regtest chain is running and can connect to nodes via pastel-cli.

To kill ALL mock nodes use
```
ps -afx | grep pasteld | grep mock-data | awk '{print $1}' | xargs -r kill -9
```
