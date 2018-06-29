# Learn Solidity
Learn Solidity Step by Step


# Prerequisite
To Run these examples please follow following steps

## Installation
1. Install **Geth** (https://ethereum.github.io/go-ethereum/downloads/)
2. Install **Truffle** ```npm install -g truffle```
3. Start Test Network - There are three options
   - Use Test network using following comming
     - ```Geth --testnet``` **OR** 
     - ```Geth --rinkeby```
   - Create Private network 
   - Use ganache-cli
     - npm install -g ganache-cli
     - Run ganache-cli using following command
       - ```ganache-cli```
       - This will create Test network

# Compile, Deploy and Test Project
1. Go to project folder e.g
   - ```cd 01_HelloWorld```

2. Inside that folder Compile with following command
   - ```truffle.cmd compile``` on Windows
   - ```truffle compile```

3. Deploy Contract with following command
   - ```truffle.cmd migrate```  on Windows
   - ```truffle migrate```


4. Test Contract with following command
   - ```truffle.cmd test```  on Windows
   - ```truffle test```