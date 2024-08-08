// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Struct {
    struct People {
        string name;
        int age;
    }

    People[] signPeople;

    People people; //declared but not value

    People people2 = People("bbb", 20);

    function sign() external {
        signPeople.push(People({name: "23", age: 10}));
        signPeople.push(People("45", 10));
        People memory people2;
        people2.age = 10;
        people2.name = "8956";
        signPeople.push(people2);
    }
}
