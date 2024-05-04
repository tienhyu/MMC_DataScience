CREATE DATABASE Testing_System_Db;

USE Testing_System_Db;

CREATE TABLE Department(
    DepartmentID    INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName  VARCHAR(50)
)

CREATE TABLE Postion(
    PositionID      INT AUTO_INCREMENT PRIMARY KEY,
    PositionName    VARCHAR(50)
)

CREATE TABLE Acount(
    AccountID       INT AUTO_INCREMENT PRIMARY KEY,
    Email           VARCHAR(50),
    Username        VARCHAR(50),
    FullName        VARCHAR(50),
    DepartmentID    INT,
    PositionID      INT,
    CreateDate      DATE
)

CREATE TABLE Group_Name(
    GroupID     INT AUTO_INCREMENT PRIMARY KEY,
    GroupName   VARCHAR(50),
    CreatorID   VARCHAR(50),
    CreateDate  DATE
)

CREATE TABLE GroupAccount(
    GroupID     INT,
    AccountID   INT,
    JoinDate    DATE
)

CREATE TABLE TypeQuestion(
    TypeID      INT AUTO_INCREMENT PRIMARY KEY,
    TypeName    VARCHAR(50)
)

CREATE TABLE CategoryQuestion(
    CategoryID      INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName    VARCHAR(50)
)

CREATE TABLE Question(
    QuestionID      INT AUTO_INCREMENT PRIMARY KEY,
    Content         VARCHAR(1000),
    CategoryID      INT,
    TypeID          INT,
    CreatorID       VARCHAR(50),
    CreateDate      DATE
)

CREATE TABLE Answer(
    AnswerID        INT AUTO_INCREMENT PRIMARY KEY,
    Content_table   VARCHAR(1000),
    QuestionID      INT,
    isCorrect       BOOLEAN
)

CREATE TABLE Exam(
    ExamID      INT AUTO_INCREMENT PRIMARY KEY,
    Code        VARCHAR(50),
    Title       VARCHAR(50),
    CategoryID  INT,
    Duration    TIME,
    CreatorID   VARCHAR(50),
    CreateDate  DATE
)

CREATE TABLE ExamQuestion(
    ExamID      INT,
    QuestionID  INT
)
