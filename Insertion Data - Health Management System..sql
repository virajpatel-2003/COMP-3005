
INSERT INTO Member (MemberID, Name, Number, Points) VALUES
(1, 'John', '1212121211', 100),
(2, 'Jane', '1313131313', 150),
(3, 'Alex', '1414141414', 120),
(4, 'Jack', '1787878777', 100),
(5, 'J Smith', '1314545445', 150),
(6, 'Viraj', '1415655614', 120),
(7, 'Sambit', '1223423211', 100),
(8, 'Parsh', '1215647811', 100),
(9, 'King', '2223131313', 150),
(10, 'Molly', '6134141414', 120);

INSERT INTO Profile (MemberID, FitnessGoal, HealthMetric) VALUES
(1, 'Lose Weight', 'BMI: 25'),
(2, 'Maintain Fitness', 'BMI: 24'),
(3, 'Build Muscle', 'BMI: 26'),
(4, 'Maintain Fitness', 'BMI: 18'),
(5, 'Lose Weight', 'BMI: 20'),
(6, 'Build Muscle', 'BMI: 24'),
(7, 'Maintain Fitness', 'BMI: 28'),
(8, 'Lose Weight', 'BMI: 25'),
(9, 'Build Muscle', 'BMI: 27'),
(10, 'Lose Weight', 'BMI: 25');

INSERT INTO PersonalTrainer (TrainerID, Name, Schedule) VALUES
(111, 'Sunny', 'Monday, Wednesday, Friday'),
(222, 'Kristi', 'Tuesday, Thursday, Saturday'),
(333, 'Pal', 'Monday, Thursday, Saturday'),
(555, 'Queen', 'Monday, Wednesday, Friday'),
(666, 'Randy', 'Tuesday, Thursday, Saturday'),
(777, 'Pawal', 'Monday, Thursday, Saturday'),
(888, 'Cookie', 'Monday, Wednesday, Friday'),
(999, 'Zoro', 'Monday, Thursday, Saturday'),
(121, 'IronMan', 'Tuesday, Thursday, Saturday'),
(444, 'SpiderMan', 'Monday, Thursday, Saturday');

INSERT INTO AdministrativeStaff (StaffID, Name) VALUES
(0166, 'Thor'),
(0277, 'Odin'),
(0388, 'Loki'),
(2166, 'Laval'),
(2277, 'Monty'),
(2388, 'Remmy'),
(9166, 'Rola'),
(9277, 'Nemo'),
(9388, 'Candy'),
(9118, 'Ronny');

INSERT INTO Rooms (RoomNumber, Capacity) VALUES
(101, 20),
(102, 15),
(104, 30),
(105, 20),
(106, 15),
(107, 30),
(108, 20),
(109, 15),
(110, 30),
(103, 30);

INSERT INTO Equipment (EquipmentID, MaintenanceStatus) VALUES
(1001, 'Good'),
(1002, 'Needs Maintenance'),
(1003, 'Good'),
(1004, 'Bad'),
(1005, 'Very Good'),
(1006, 'Good'),
(1007, 'Good'),
(1008, 'Needs Maintenance'),
(1009, 'Needs Maintenance'),
(1010, 'Needs Maintenance');

INSERT INTO Views (MemberID, TrainerID) VALUES
(1, 222),
(2, 555),
(3, 777),
(4, 888),
(5, 666),
(6, 111),
(7, 121),
(8, 444),
(9, 333),
(10, 999);


INSERT INTO Dashboard (MemberID, FitnessAchievement, HealthStatistics, ExerciseRoutine) VALUES
(1, 'Ran 5 miles', 'Heart Rate: 120', 'Cardio and Strength Training'),
(2, 'Lost 10 lbs', 'Heart Rate: 130', 'Yoga and Pilates'),
(3, 'Gained Muscle', 'Heart Rate: 140', 'Weightlifting'),
(4, 'Ran 5 miles', 'Heart Rate: 120', 'Cardio and Strength Training'),
(5, 'Lost 10 lbs', 'Heart Rate: 120', 'Yoga and Pilates'),
(6, 'Gained Muscle', 'Heart Rate: 110', 'Weightlifting'),
(7, 'Ran 5 miles', 'Heart Rate: 120', 'Cardio and Strength Training'),
(8, 'Lost 10 lbs', 'Heart Rate: 170', 'Yoga and Pilates'),
(9, 'Gained Muscle', 'Heart Rate: 150', 'Weightlifting'),
(10, 'Ran 5 miles', 'Heart Rate: 120', 'Cardio and Strength Training');

INSERT INTO Trains (TrainerID, MemberID, Date, Status, ProgressNotes) VALUES
(222, 1, '2023-01-01', 'Cancelled', '' ),
(555, 2, '2023-01-02', 'Re-Scheduled', ''),
(777, 3, '2023-01-03', 'Scheduled', 'Good progress!'),
(888, 4, '2023-01-11', 'Cancelled', '' ),
(666, 5, '2023-02-02', 'Re-Scheduled', ''),
(111, 6, '2023-01-23', 'Scheduled', 'Focused on Cardio'),
(121, 7, '2023-02-01', 'Cancelled', '' ),
(444, 8, '2023-01-22', 'Re-Scheduled', ''),
(333, 9, '2023-01-13', 'Scheduled', 'Good progress!'),
(999, 10, '2023-01-11', 'Cancelled', '' );

INSERT INTO Maintains (EquipmentID, StaffID) VALUES
(1004, 0166),
(1005, 2277),
(1006, 0166),
(1007, 9118),
(1008, 9118),
(1009, 0166),
(1001, 9118),
(1002, 0166),
(1003, 2277);

INSERT INTO Bill (PaymentID, MemberID, StaffID, ServiceType, PaymentStatus, Amount) VALUES
(5001, 1, 0166, 'Membership Fee', 'Paid', 50.00),
(5002, 2, 0277, 'Personal Training', 'Pending', 75.00),
(5003, 3, 0388, 'Group Fitness Class', 'Paid', 30.00),
(5004, 4, 2166, 'Membership Fee', 'Pending', 50.00),
(5005, 5, 2277, 'Equipment Rental', 'Pending', 20.00),
(5006, 6, 2388, 'Membership Fee', 'Paid', 50.00),
(5007, 7, 9166, 'Personal Training', 'Pending', 75.00),
(5008, 8, 9277, 'Group Fitness Class', 'Pending', 30.00),
(5009, 9, 9388, 'Membership Fee', 'Paid', 50.00),
(5010, 10, 9118, 'Equipment Rental', 'Pending', 20.00);

INSERT INTO Books (BookingID, RoomNumber, Date, Time, StaffID) VALUES
(10001, 101, '2023-01-05', '10:00:00', 0166),
(10002, 102, '2023-01-06', '15:30:00', 0277),
(10003, 104, '2023-01-07', '12:00:00', 0388),
(10004, 105, '2023-01-08', '14:00:00', 2166),
(10005, 106, '2023-01-09', '11:30:00', 2277),
(10006, 107, '2023-01-10', '16:00:00', 2388),
(10007, 108, '2023-01-11', '09:30:00', 9166),
(10008, 109, '2023-01-12', '13:45:00', 9277),
(10009, 110, '2023-01-13', '17:30:00', 9388),
(10010, 103, '2023-01-14', '08:00:00', 9118);

INSERT INTO ClassSchedule (ScheduleID, BookingID, TrainerID, StaffID) VALUES
(2001, 10001, 222, 0166),
(2002, 10002, 555, 0277),
(2003, 10003, 777, 0388),
(2004, 10004, 888, 2166),
(2005, 10005, 666, 2277),
(2006, 10006, 111, 2388),
(2007, 10007, 121, 9166),
(2008, 10008, 444, 2277),
(2009, 10009, 333, 9388),
(2010, 10010, 999, 2277);
