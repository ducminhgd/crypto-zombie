//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ZombieFactory {
    uint256 dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits; // uint is an alias of uint256

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // `memory` is required for all reference types such as arrays, structs, mappings and strings
    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }
}
