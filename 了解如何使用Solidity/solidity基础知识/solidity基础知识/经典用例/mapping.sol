// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

contract Mapping {
    mapping (address => uint256) myMap;
    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }
    function set(address _addr, uint256 _i)  public {
        myMap[_addr] = _i;
    }
    function remove(address _addr)  public {
        delete myMap[_addr];
    }
}

contract NesteMapping {
    mapping (address => mapping (uint256=>bool)) public nnested;
    function get(address _addr, uint256 _i)  public view returns (bool) {
        return nnested[_addr][_i];
    }
    function set(address _addr1, uint256 _i, bool _boo)  public {
        nnested[_addr1][_i] = _boo;
    }
    function remove(address _addr, uint256 _i)  public {
        delete nnested[_addr][_i];
    }
}