module.exports = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "_age",
				"type": "uint256"
			},
			{
				"name": "_fName",
				"type": "string"
			},
			{
				"name": "_lName",
				"type": "string"
			}
		],
		"name": "enrollStudent",
		"outputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getProgramCost",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getTotalStudents",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "studentAccounts",
		"outputs": [
			{
				"name": "age",
				"type": "uint256"
			},
			{
				"name": "fName",
				"type": "string"
			},
			{
				"name": "lName",
				"type": "string"
			},
			{
				"name": "currentStatus",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "students",
		"outputs": [
			{
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]