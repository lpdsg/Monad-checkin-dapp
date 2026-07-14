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
    
    function hasCheckedInToday(address user) public view returns (bool) {
    uint256 currentDay = getCurrentDay();

    return checkInRecords[user].lastCheckInDay == currentDay;
    }

    function checkIn() public {
    uint256 currentDay = getCurrentDay();
    CheckInInfo storage userInfo = checkInRecords[msg.sender];

    require(
        userInfo.lastCheckInDay != currentDay,
        "You have already checked in today"
    );

    if (userInfo.lastCheckInDay + 1 == currentDay) {
        userInfo.currentStreak += 1;
    } else {
        userInfo.currentStreak = 1;
    }

    userInfo.totalCheckIns += 1;
    userInfo.lastCheckInDay = currentDay;

    emit CheckedIn(
        msg.sender,
        currentDay,
        userInfo.totalCheckIns,
        userInfo.currentStreak
    );
}

}
