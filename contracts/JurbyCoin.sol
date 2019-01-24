pragma solidity >=0.4.21 <0.6.0;

contract JurbyCoin {
    address payable public CEO;
    address payable public CTO;
    address payable public COO;

    constructor (address payable _CEO, address payable _CTO, address payable _COO) public {
        CEO = _CEO;
        CTO = _CTO;
        COO = _COO;
    }

    function donate() payable public {}

    function buy() payable public {
        CEO.transfer(msg.value / 2);
        CTO.transfer(msg.value / 4);
        COO.transfer(msg.value / 4);
    }
}