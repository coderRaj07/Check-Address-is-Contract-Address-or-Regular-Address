// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract checkContractAddressOrNot{

    //check if the address is a smartcontract or not 
    function isContract(address addr) public view returns (bool) {
    uint size;
    assembly { size := extcodesize(addr) }
    return size > 0;
    }
}