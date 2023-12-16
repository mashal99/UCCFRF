CREATE TABLE `Department` (
  `DepartmentID` int PRIMARY KEY,
  `DepartmentName` varchar(255)
);

CREATE TABLE `FacultyMember` (
  `FacultyID` int PRIMARY KEY,
  `Name` varchar(255),
  `Email` varchar(255),
  `DepartmentID` int
);

CREATE TABLE `UserAccount` (
  `UserID` int PRIMARY KEY,
  `Username` varchar(255),
  `Password` varchar(255),
  `Role` varchar(255),
  `FacultyID` int
);

CREATE TABLE `Category` (
  `CategoryID` int PRIMARY KEY,
  `CategoryName` varchar(255)
);

CREATE TABLE `Document` (
  `DocumentID` int PRIMARY KEY,
  `Title` varchar(255),
  `Type` varchar(255),
  `UploadDate` timestamp,
  `FacultyID` int
);

CREATE TABLE `DocumentCategory` (
  `DocumentID` int,
  `CategoryID` int
);

ALTER TABLE `FacultyMember` ADD FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`);

ALTER TABLE `UserAccount` ADD FOREIGN KEY (`FacultyID`) REFERENCES `FacultyMember` (`FacultyID`);

ALTER TABLE `Document` ADD FOREIGN KEY (`FacultyID`) REFERENCES `FacultyMember` (`FacultyID`);

ALTER TABLE `DocumentCategory` ADD FOREIGN KEY (`DocumentID`) REFERENCES `Document` (`DocumentID`);

ALTER TABLE `DocumentCategory` ADD FOREIGN KEY (`CategoryID`) REFERENCES `Category` (`CategoryID`);
