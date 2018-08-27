pragma solidity ^0.4.10;

import "./ownable.sol";

contract HackButterfly is Ownable {
    uint public programCost = 5 ether;
    uint currentStudents = 0;
    
    
    // Admin Stuff
    function setProgramCost(uint _fee) external onlyOwner {
        programCost = _fee;
    }
    
    function graduateStudent(uint _id) external onlyOwner {
        studentAccounts[_id].currentStatus = "Graduated";
    }
    
    function checkContractBalance() public view onlyOwner returns(uint) {
        return address(this).balance;
    }
    
    function withdrawEther() external onlyOwner {
        owner.transfer(address(this).balance);
    }

    struct Student {
        uint8 age;
        string fName;
        string lName;
        string currentStatus;
    }
    
    mapping (uint => address) public students;
    
    Student[] public studentAccounts;
    
    function enrollStudent(uint8 _age, string _fName, string _lName) external payable {
        require(msg.value == programCost);
        uint id = studentAccounts.push(Student(_age, _fName, _lName, "Enrolled")) -1;
        students[id] = msg.sender;
        currentStudents++;
    }
    
    function getTotalStudents() public view returns(uint) {
        return studentAccounts.length;
    }
    
    //PSEUDOCODE BEFORE WRITING THE SMART CONTRACT:

    //SETUP
        //array of students
        //status of student: Id, name, github?, enrollment date, 
            //certificate date, graduated?, certificate
    //FUNCTIONS
        //PAYABLE: send eth to enrollment function 
            //create student
            //push student to students array -> status: enrolled
        //READ: get status of student (based on Id, or Address?)
        //TRANSACTION: give certificate to student (owned)
            //owner(=school) saves certificate in the certificates array with student ID attached
            //student status changes to 'graduated'
        //READ: check contract balance (=aka how much money is in the school)
}