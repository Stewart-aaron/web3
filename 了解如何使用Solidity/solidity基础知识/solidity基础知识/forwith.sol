// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

contract Loop {
    function loop() public {
        for (uint i = 0; i < 10; i++) {
            if (i==3) {
                continue;
            }
            if (i==5) {
                break;
            }
        }
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}