# Simple-Basic-Storage-Contract
Basic Solidity contract that explains the Solidity language architecture and how to to start with coding.

# Contract description

You can find the description for the functions in the contract which is deployed in Rinkeby testnet and verified on Etherscan.

Check at https://rinkeby.etherscan.io/address/0x3e4c9a04119f590939fefb0799bf219322dfbb79#contracts

## Initial requirements

a. NodeJS installed

b. Metamask chrome extension installed 

 - Install from https://metamask.io/
 - Create accounts by following the steps
 - Select the network to Rinkeby test network
 - Faucet some ethers to the created account from https://faucet.rinkeby.io/

# Contract edit and deployment

1. Open http://remix.ethereum.org/#optimize=false&evmVersion=null&appVersion=0.7.7&version=soljson-v0.5.1+commit.c8a2cb62.js.

2. Copy the code from the SimpleStorageContract.sol file and paste it.
.
3. From the compile tab select the compiler version to 0.4.26 commit.

4. Then switch over to Run tab over there select the environment to injected web3 and check whether metamask is unlocked and with Rinkeby test network.

5. Select the SimpleStorageContract and click deploy.

6. Metamak will popup if there is no errors just confirm the transaction else check for the compilation errors.

7. Go to Compile tab below there copy the abi and paste it in the public/UI/js/abi.js file under the variable "abi".

8. Go to run tab and from the deployed contracts click on it copy the contract address and paste it in the public/UI/js/abi.js file under contractaddress variable.

9. You are done just follow the below steps, run the server and play around in the UI.
 

# How to run the server and play around the contract and the dapp.

1. Clone the repo.

2. Run the node server file  $node server.js

3. Open http://localhost:8337/ you will find the UI to interact with the smart contract. (Metamask account should be unlocked and select the Rinkeby test network)

4. Start playing with the contract.

