var ContractAddress = "0x3e4c9a04119f590939fefb0799bf219322dfbb79";

var abi = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "newValue",
				"type": "uint256"
			}
		],
		"name": "decrement",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "newValue",
				"type": "uint256"
			}
		],
		"name": "increment",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "newValue",
				"type": "uint256"
			}
		],
		"name": "set",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"name": "value",
				"type": "uint256"
			}
		],
		"name": "SetData",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"name": "incrementedValue",
				"type": "uint256"
			},
			{
				"indexed": false,
				"name": "decrementedValue",
				"type": "uint256"
			}
		],
		"name": "ChangeData",
		"type": "event"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "get",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
];

var contract = web3.eth.contract(abi).at(ContractAddress);