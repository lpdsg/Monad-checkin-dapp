// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CheckIn {

    struct CheckInInfo {
        uint256 totalCheckIns;
        uint256 currentStreak;
        uint256 lastCheckInDay;
    }

    mapping(address => CheckInInfo) private checkInRecords;

    event CheckedIn(
        address indexed user,
        uint256 checkInDay,
        uint256 totalCheckIns,
        uint256 currentStreak
    );

    function getCurrentDay() public view returns (uint256) {
        return block.timestamp / 1 days;
    }

}
