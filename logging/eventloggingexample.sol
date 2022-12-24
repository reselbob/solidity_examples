// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

/*****
 * @author Blockchain Journal
 * @dev An example of a smart contrct the uses events
 *         to log data to the underlying DLT
 *****/
contract EventLoggingExample {
    uint64 mynumber;

    event BeforeSetMyNumber(uint64 oldValue);
    event AfterSetMyNumber(uint64 newValue);

    /*****
     * A setter function for the private 
     * member variable mynumber
     *
     * @param uint64 num, the value to assign to the private
     *                    variable
     *****/
    function setMyNumber(uint64 num) public {
        emit BeforeSetMyNumber(mynumber);
        mynumber = num;
        emit AfterSetMyNumber(mynumber);
    }
}
