INSERT INTO `airport_db`.`Type_of_plane` (`Model`, `Capacity`, `Weight`)
VALUES
  ('Boeing 737', 150, 65.5),
  ('Airbus A320', 140, 60.2),
  ('Boeing 747', 400, 182.9),
  ('Embraer E175', 78, 30.8),
  ('Cessna 172', 4, 1.8),
  ('Bombardier Challenger 300', 9, 12.7),
  ('Gulfstream G650', 18, 27.5),
  ('Antonov An-225', 1000, 285.3),
  ('Lockheed C-130 Hercules', 92, 34.6),
  ('Piper PA-28 Cherokee', 4, 1.3),
  ('Airbus A380', 853, 560.2),
  ('Boeing 777', 368, 236.7),
  ('Embraer E190', 114, 35.2),
  ('Cessna Citation X', 12, 7.9),
  ('Bombardier Global 7500', 19, 32.6),
  ('Dassault Falcon 7X', 16, 25.4),
  ('Boeing 787 Dreamliner', 296, 227.9),
  ('Lockheed Martin F-35', 1, 13.1),
  ('Sikorsky UH-60 Black Hawk', 11, 5.3),
  ('Bell AH-1 Cobra', 2, 2.7);
  
  INSERT INTO `airport_db`.`Airport_apron` (`AP_number`, `Capacity`, `AP_location`)
VALUES
  (1, 50, 'Terminal A'),
  (2, 40, 'Terminal B'),
  (3, 60, 'Terminal C'),
  (4, 55, 'Terminal D'),
  (5, 30, 'Cargo Area 1'),
  (6, 25, 'Cargo Area 2'),
  (7, 20, 'Maintenance Area 1'),
  (8, 22, 'Maintenance Area 2'),
  (9, 15, 'Hangar 1'),
  (10, 20, 'Hangar 2'),
  (11, 18, 'Private Jets Area 1'),
  (12, 12, 'Private Jets Area 2'),
  (13, 10, 'General Aviation Area 1'),
  (14, 8, 'General Aviation Area 2'),
  (15, 40, 'Remote Apron 1'),
  (16, 30, 'Remote Apron 2'),
  (17, 35, 'Remote Apron 3'),
  (18, 28, 'Remote Apron 4'),
  (19, 5, 'Sample Area 1'),
  (20, 5, 'Sample Area 2');
  
  INSERT INTO `airport_db`.`Airplane` (`Registration_no`, `Manufacturer`, `Model`, `AP_Number`)
VALUES
  (1001, 'Boeing', 'Boeing 737', 1),
  (1002, 'Airbus', 'Airbus A320', 2),
  (1003, 'Boeing', 'Boeing 747', 3),
  (1004, 'Embraer', 'Embraer E175', 4),
  (1005, 'Cessna', 'Cessna 172', 5),
  (1006, 'Bombardier', 'Bombardier Challenger 300', 6),
  (1007, 'Gulfstream', 'Gulfstream G650', 7),
  (1008, 'Antonov', 'Antonov An-225', 8),
  (1009, 'Lockheed', 'Lockheed C-130 Hercules', 9),
  (1010, 'Piper', 'Piper PA-28 Cherokee', 10),
  (1011, 'Airbus', 'Airbus A380', 11),
  (1012, 'Boeing', 'Boeing 777', 12),
  (1013, 'Embraer', 'Embraer E190', 13),
  (1014, 'Cessna', 'Cessna Citation X', 14),
  (1015, 'Bombardier', 'Bombardier Global 7500', 15),
  (1016, 'Dassault', 'Dassault Falcon 7X', 16),
  (1017, 'Boeing', 'Boeing 787 Dreamliner', 17),
  (1018, 'Lockheed', 'Lockheed Martin F-35', 18),
  (1019, 'Sikorsky', 'Sikorsky UH-60 Black Hawk', 19),
  (1020, 'Bell', 'Bell AH-1 Cobra', 20);

  INSERT INTO `airport_db`.`Owns` (`owner_id`, `Registration_number`, `Purchase_date`,`type_of_owner`)
VALUES
  (1, 1001, '2023-07-01','corporation'),
  (2, 1002, '2023-07-02','corporation'),
  (3, 1003, '2023-07-03','corporation'),
  (4, 1004, '2023-07-04','corporation'),
  (5, 1005, '2023-07-05','corporation'),
  (6, 1006, '2023-07-06','corporation'),
  (7, 1007, '2023-07-07','corporation'),
  (8, 1008, '2023-07-08','corporation'),
  (9, 1009, '2023-07-09','corporation'),
  (10, 1010, '2023-07-10','corporation'),
  (11, 1011, '2023-07-11','person'),
  (12, 1012, '2023-07-12','person'),
  (13, 1013, '2023-07-13','person'),
  (14, 1014, '2023-07-14','person'),
  (15, 1015, '2023-07-15','person'),
  (16, 1016, '2023-07-16','person'),
  (17, 1017, '2023-07-17','person'),
  (18, 1018, '2023-07-18','person'),
  (19, 1019, '2023-07-19','person'),
  (20, 1020, '2023-07-20','person');
  
INSERT INTO `airport_db`.`corporation` (`Name`, `Street`, `City`, `State`, `Zip`, `cphone_no`,`owner_id`)
VALUES
  ('BlueSky Corp', '123 Main St', 'New York City', 'New York', '12345',7892456789, 1),
('AviationTech', '456 Elm St', 'Los Angeles', 'California', '67890',6785425367, 2),
('Skyline Enterprises', '789 Oak St', 'Chicago', 'Illinois', '13579',8765678987, 3),
('Wings Unlimited', '987 Pine St', 'Houston', 'Texas', '24680',9807567890, 4),
('AirJet Innovations', '555 Maple St', 'Miami', 'Florida', '98765',9736736273, 5),
('Cloud Aviation', '222 Birch St', 'Seattle', 'Washington', '54321',3456434343, 6),
('Horizon Flights', '999 Cedar St', 'Denver', 'Colorado', '11111',6789654443, 7),
('AeroPro Solutions', '777 Walnut St', 'Atlanta', 'Georgia', '22222',9999666222, 8),
('Skyward Ventures', '444 Ash St', 'Phoenix', 'Arizona', '33333',7776665554, 9),
('FlyHigh Inc', '333 Spruce St', 'Dallas', 'Texas', '44444',3456789100, 10);
  
INSERT INTO `airport_db`.`person` (`Ssn`, `Fname`, `MI`, `Lname`, `Street`, `State`, `City`, `Zip`, `per_phone`, `owner_id`)
VALUES
  ('111223333', 'John', 'M', 'Doe', '123 Main St', 'New York', 'New York City', '10001', 1234567890, 11),
  ('222334444', 'Jane', 'K', 'Smith', '456 Elm St', 'California', 'Los Angeles', '90001', 9876543210, 12),
  ('333445555', 'Michael', NULL, 'Johnson', '789 Oak St', 'Texas', 'Houston', '77001', 4567891230, 13),
  ('444556666', 'Emily', 'L', 'Williams', '987 Pine St', 'Florida', 'Miami', '33101', 7891234560, 14),
  ('555667777', 'Robert', 'D', 'Brown', '555 Maple St', 'Illinois', 'Chicago', '60601', 6543219870, 15),
  ('666778888', 'Sophia', 'A', 'Jones', '222 Birch St', 'Massachusetts', 'Boston', '02101', 3219876540, 16),
  ('777889999', 'William', 'R', 'Davis', '999 Cedar St', 'Washington', 'Seattle', '98101', 1597538520, 17),
  ('888990000', 'Olivia', 'M', 'Miller', '777 Walnut St', 'Colorado', 'Denver', '80201', 3571598520, 18),
  ('999001111', 'James', NULL, 'Wilson', '444 Ash St', 'Georgia', 'Atlanta', '30301', 8527539510, 19),
  ('000112222', 'Ava', 'S', 'Anderson', '333 Spruce St', 'Arizona', 'Phoenix', '85001', 1237894560, 20);
  
  
  INSERT INTO `airport_db`.`Employee` (`Efname`, `EMi`, `Elname`, `Salary`, `Essn`, `Esex`, `Shift`, `Eaddress`,`Role`)
VALUES
  ('John', 'M', 'Doe', 50000, '123456789', 'M', 'Day', '123 Main St','Pilot'),
  ('Jane', 'K', 'Smith', 60000, '987654321', 'F', 'Night', '456 Elm St','Pilot'),
  ('Michael', NULL, 'Johnson', 55000, '456789123', 'M', 'Day', '789 Oak St','Pilot'),
  ('Emily', 'L', 'Williams', 52000, '789123456', 'F', 'Night', '987 Pine St','Pilot'),
  ('Robert', 'D', 'Brown', 58000, '654321987', 'M', 'Day', '555 Maple St','Pilot'),
  ('Sophia', 'A', 'Jones', 63000, '321987654', 'F', 'Night', '222 Birch St','Technician'),
  ('William', 'R', 'Davis', 54000, '159753852', 'M', 'Day', '999 Cedar St','Technician'),
  ('Olivia', 'M', 'Miller', 58000, '357159852', 'F', 'Night', '777 Walnut St','Technician'),
  ('James', NULL, 'Wilson', 61000, '852753951', 'M', 'Day', '444 Ash St','Technician'),
  ('Ava', 'S', 'Anderson', 52000, '123789456', 'F', 'Night', '333 Spruce St','Technician'),
  ('Michael', 'B', 'Lee', 57000, '789456123', 'M', 'Day', '888 Pine St','Technician'),
  ('Isabella', 'J', 'Scott', 59000, '987456321', 'F', 'Night', '777 Elm St','Technician'),
  ('William', 'C', 'Thomas', 61000, '654789321', 'M', 'Day', '111 Oak St','Traffic Controller'),
  ('Mia', NULL, 'Hall', 54000, '321789654', 'F', 'Night', '999 Birch St','Traffic Controller'),
  ('Alexander', 'S', 'Young', 53000, '852369741', 'M', 'Day', '555 Cedar St','Traffic Controller'),
  ('Olivia', 'N', 'King', 62000, '357951852', 'F', 'Night', '222 Walnut St','Traffic Controller'),
  ('Michael', 'L', 'Wright', 58000, '123456987', 'M', 'Day', '444 Maple St','Traffic Controller'),
  ('Sophia', 'D', 'Hill', 65000, '159753753', 'F', 'Night', '888 Ash St','Traffic Controller'),
  ('Aiden', NULL, 'Green', 53000, '789123789', 'M', 'Day', '777 Spruce St','Traffic Controller'),
  ('Amelia', 'P', 'Baker', 55000, '987654987', 'F', 'Night', '333 Pine St','Traffic Controller');
  
  INSERT INTO `airport_db`.`Pilot` (`Essn`, `Pil_license`)
VALUES
  ('123456789', 'PL001'),
  ('987654321', 'PL002'),
  ('456789123', 'PL003'),
  ('789123456', 'PL004'),
  ('654321987', 'PL005');
  
  INSERT INTO `airport_db`.`Technician` (`Area of expertise`, `Essn`)
VALUES
  ('Avionics', '321987654'),
  ('Mechanical', '159753852'),
  ('Electrical', '357159852'),
  ('Avionics', '852753951'),
  ('Mechanical', '123789456'),
  ('Electrical', '789456123'),
  ('Avionics', '987456321');
  
INSERT INTO `airport_db`.`Traffic_controller` (`Essn`, `License`, `TC_Experience`)
VALUES
  ('654789321', 'TC001', 3),
  ('321789654', 'TC002', 5),
  ('852369741', 'TC003', 7),
  ('357951852', 'TC004', 2),
  ('123456987', 'TC005', 6),
  ('159753753', 'TC006', 7),
  ('789123789', 'TC007', 2),
  ('987654987', 'TC008', 6);
  
  INSERT INTO `airport_db`.`works_on` (`Essn`,`Registration_no`)
VALUES
(123456789, 1001),
(321987654, 1001),
(357159852, 1001),
(159753852, 1001),
(654789321, 1001),
(987654321, 1002),
(159753852, 1002),
(789456123, 1002),
(852753951, 1002),
(321789654, 1002),
(852369741, 1002),
(789123456, 1003),
(456789123, 1003),
(357159852, 1003),
(987456321, 1003),
(123789456, 1003),
(123456987, 1003);

  

  
  
  
