pragma solidity >=0.4.21 <0.6.0;

contract SimpleToken {
	mapping(address => uint256) private balanceOf;
	string private name;
	
	constructor (uint256 _initialSupply, string memory _name) public {
		balanceOf[msg.sender] = _initialSupply;
		name = _name;		
	}

	function transfer(address _to, uint256 _amount) public {
		require(balanceOf[msg.sender] >= _amount);
		balanceOf[msg.sender] -= _amount;
		balanceOf[_to] += _amount;
	}

	function getBalanceOf(address _holder) public view returns(uint256) {
		return balanceOf[_holder];
	}

	function getName() public view returns(string memory){
		return name;
	}
} 
