CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(255),
    Number VARCHAR(12),
    Points INT
);

CREATE TABLE Profile (
    MemberID INT PRIMARY KEY,
    FitnessGoal VARCHAR(255),
    HealthMetric VARCHAR(255),
    FOREIGN KEY (MemberID) 
		REFERENCES Member(MemberID)
);

CREATE TABLE PersonalTrainer (
    TrainerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Schedule VARCHAR(255)
);

CREATE TABLE AdministrativeStaff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(255)
);

CREATE TABLE Rooms (
    RoomNumber INT PRIMARY KEY,
    Capacity INT
);

CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    MaintenanceStatus VARCHAR(255)
);

CREATE TABLE Views (
    MemberID INT,
    TrainerID INT,
    PRIMARY KEY (MemberID, TrainerID),
    FOREIGN KEY (MemberID) 
		REFERENCES Member(MemberID),
    FOREIGN KEY (TrainerID) 
		REFERENCES PersonalTrainer(TrainerID)
);

CREATE TABLE Dashboard (
    MemberID INT PRIMARY KEY,
    FitnessAchievement VARCHAR(255),
    HealthStatistics VARCHAR(255),
    ExerciseRoutine VARCHAR(255),
    FOREIGN KEY (MemberID) 
		REFERENCES Member(MemberID)
);

CREATE TABLE Trains (
    TrainerID INT,
    MemberID INT,
    Date DATE,
    Status VARCHAR(255),
    ProgressNotes VARCHAR(255),
    PRIMARY KEY (TrainerID, MemberID),
    FOREIGN KEY (TrainerID) 
		REFERENCES PersonalTrainer(TrainerID),
    FOREIGN KEY (MemberID) 
		REFERENCES Member(MemberID)
);

CREATE TABLE Maintains (
    EquipmentID INT,
    StaffID INT,
    PRIMARY KEY (EquipmentID),
    FOREIGN KEY (EquipmentID)
		REFERENCES Equipment(EquipmentID),
    FOREIGN KEY (StaffID) 
		REFERENCES AdministrativeStaff(StaffID)
);

CREATE TABLE Books (
    BookingID INT PRIMARY KEY,
    RoomNumber INT,
    Date DATE,
    Time TIME,
    StaffID INT,
    FOREIGN KEY (RoomNumber) 
		REFERENCES Rooms(RoomNumber),
    FOREIGN KEY (StaffID) 
		REFERENCES AdministrativeStaff(StaffID)
);

CREATE TABLE Bill (
    PaymentID INT PRIMARY KEY,
    MemberID INT,
    StaffID INT,
    ServiceType VARCHAR(255),
    PaymentStatus VARCHAR(255),
    Amount DECIMAL ,
    FOREIGN KEY (MemberID) 
		REFERENCES Member(MemberID),
    FOREIGN KEY (StaffID) 
		REFERENCES AdministrativeStaff(StaffID)
);

CREATE TABLE ClassSchedule (
    ScheduleID INT PRIMARY KEY,
    BookingID INT,
    TrainerID INT,
    FOREIGN KEY (BookingID) 
		REFERENCES Books(BookingID),
    FOREIGN KEY (TrainerID) 
		REFERENCES PersonalTrainer(TrainerID)
);
