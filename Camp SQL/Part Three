# A complete set of tables and data in MySQL. Hand in
1. an export of your database.
2. an updated version of your table report from Stage 3. Indicate all changes. 

Table Report:
Red = Foreign Key
Purple = More information
Camp(name, location, minAge, maxAge, startTime, endTime, description)
Employee(employeeID, fname, lname, age, startDate, endDate, position, campname)
(Campname is a foreign key that refers to camp)
Group(groupId, fname, lname, age, sessionID)
(sessionID is a foreign key referring to session)
Child(childID, fname, lname, age, nextYear)
Parent(parentID, fname, lname, homePhone, workPhone, street, city, ZIP)
Activity(activityID, name, minAge, maxAge, startTime, endTime, sessionID)
(sessionID is a foreign key referring to session)
Sessions(sessionID, startDate, endDate)
FieldTrip(fieldTripID, date, busArrival, busDepart, designation, sessionID)
(sessionID is a foreign key referring to session)
Enrollment(childID, sessionID, paidStatus, paymentDate, enrollmentDate)
(childID is from child, sessionID is from session)
BelongsTo(name, sessionID)
(name is from camp, sessionID is from session)
ScheduledFor(employeeID, sessionID)
(employeeID is from employee, sessionID is from session)
AssignedTo(employeeID, groupID)
(employeeID is from employee, groupID is from group)
TaughtBy(employeeID, activityID)
(employeeID is from employee, activityID is from activity)
SignedUp(activityID, childID)
(activityID is from activity, childID is from child)
BelongsToActivity(activityID, sessionID)
(activityID is from activity, sessionID is from session)
Has(childID, parentID)
(childID is from child, parentID is from parent)
Enrolled(childID, sessionID)
(childID is from Child, sessionID is from session)
AssignedToGroup(childID, groupID)
(childID is from Child, groupID is from group)


Changes made:
●Added in M:N Relationships that were missing (stated below) and added where the
primary keys come from (listed above)
○BelongsTo(name, sessionID)
○ScheduledFor(employeeID, sessionID)
○AssignedTo(employeeID, groupID)
○TaughtBy(employeeID, activityID)
○SignedUp(activityID, childID)
○BelongsToActivity(activityID, sessionID)
○Has(childID, parentID)
○Enrolled(childID, sessionID)
○AssignedToGroup(childID, groupID)
●Removed groupID from Emplyee
●Added sessionID as a foreign key in Activity
●Changed all relationships to have correct lines (For example: instead of (1) its now
(1,1))
●A parent can now have more than one child (1:N relationship is now M:N
relationship)
●Sessions now have multiple groups (1:1 relationship is now 1:N relationship)
●One group has multiple field trips (M:N relationship is now 1:N relationship)
●A session now has multiple field trips (1:1 relationship is now 1:N relationship)
●Multiple employees can now be assigned to more than one group (1:1 relationship is
now a M:N relationship)


SQL Statements to create tables above:
Create table Camp (name varchar(30) primary key, location varchar(30), minAge
int(2), maxAge int(2), startTime time (6), endTime time (6), description text);
Insert into  Camp values ('Camp Walden','Diamond Point, NY', '8', '18',
'08:00:00','17:00:00', 'At Walden, you’re not just gaining an experience -
you’re gaining a second home. When you are a part of the Walden family, you are
a part of something much bigger, and you’re going to love how that feels.');
Insert into  Camp values ('Camp Schodack', 'Nassau, NY', '7', '16', '00:00:00',
'24:00:00', 'Most of our 160 staff grew up at Schodack and believe in what it
stands for. Schodack is committed to its small size, family atmosphere, and
amazing traditions. We have never met children who are so friendly and so
happy.');
Insert into  Camp values ('Camp Reece', 'Johnsburg, NY', '10', '17',
'00:00:00', '24:00:00', 'Camp Reece, located in the Adirondacks, is a
sleep-away camp for individuals that require differentiated instruction and
modified activities to ensure campers of all levels, abilities, and ages can
participate fully and successfully. Our idyllic natural setting and skilled
staff provide campers with an immersive and engaging range of activities. We
emphasize empowering our campers with new skills, self-confidence, self-esteem,
and social-emotional growth, all while having fun!');
Insert into  Camp values ('Camp Lakota', 'Wurtsboro, NY', '10', '16',
'07:45:00', '21:30:00', 'Hello, Campers, Parents, and all future Lakota
Families. Camp Lakota, located just 90 miles from New York City, sits high atop
the Wurtsboro Hills in the foothills of the Catskill Mountains. We are situated
on 200 of the most beautiful acres of land. Our magnificent Masten Lake with
its sandy beaches and diverse waterfront sports has helped make Lakota a family
tradition for 90 years.');
Create table Employee (employeeID varchar(4) primary key, fname varchar(30),
lname varchar(30), age int(2), startDate date, endDate date, position
varchar(30), campname varchar(30) REFERENCES Camp(name));
Insert into Employee values ('9872', 'Sandra', 'Gomez', '18', '2022-05-01',
'2022-05-25', 'Camp Director', 'Camp Walden');
Insert into Employee values ('0021', 'Amy', 'Lee', '17', '2022-06-01',
'2022-06-15', 'Activity Specialist', 'Camp Schodack');
Insert into Employee values ('1025', 'Brandon', 'Garcia', '18', '2022-07-02',
'2022-07-18', 'Assistant Camp Director', 'Camp Reece');
Insert into Employee values ('1138', 'Juan', 'Rodrigues', '16', '2022-07-01',
'2022-07-15', 'Junior Counselor', 'Camp Lakota');
-- Named Group1 since it cannot be named Group --
Create table Group1 (groupId varchar(4) primary key, fname varchar(30), lname
varchar(30), age int(2), sessionID varchar(4) references session(sessionID));
Insert into Group1 values ('7284', 'Stephanie', 'Smith', '10', '9811');
Insert into Group1 values ('6281', 'Marc', 'Jacobs', '9', '9909');
Insert into Group1 values ('1504', 'Rebecca', 'Griffin', '12', '5628');
Insert into Group1 values ('2262', 'Greg', 'Jones', '11', '0929');
Create table Child (childID varchar(4) primary key, fname varchar(30), lname
varchar(30), age int(2), nextYear int(2));
Insert into Child values ('7777', 'Greg', 'Jones', '11', '7');
Insert into Child values ('7878', 'Rebecca', 'Griffin', '12', '8');
Insert into Child values ('3432', 'Marc', 'Jacobs', '9', '5');
Insert into Child values ('2233', 'Stephanie', 'Smith', '10', '6');
Create table Parent (parentID varchar(4) primary key, fname varchar(30), lname
varchar(30), homePhone varchar(10), workPhone varchar(10), street varchar(20),
city varchar(30), ZIP varchar(5));
Insert into Parent values ('1101', 'Samantha', 'Jones', '3475556734',
'7188348888', '542W Adams Road', 'NY', '11555');
Insert into Parent values ('3463', 'Kevin', 'Griffin', '3477773464',
'3473333333', '236 Booth Street', 'NY', '11356');
Insert into Parent values ('2839', 'Carl', 'Jacobs', '7187383473',
'6462398528', '892W Marc Street', 'NY', '11364');
Insert into Parent values ('5656', 'Alexis', 'Smith', '7188973435',
'7189998373', '1234 Addleton Street', 'NY', '11234');
Create table Activity (activityID varchar(4) primary key, name varchar(30),
minAge int(2), maxAge int(2), startTime time (6), endTime time (6), sessionID
varchar(4) references session(sessionID));
Insert into Activity values ('0818', 'Canoeing', '8', '18', '12:00:00',
'15:00:00', '9811');
Insert into Activity values ('8837', 'Arts And Crafts', '8', '18', '10:00:00',
'14:00:00', '9909');
Insert into Activity values ('8372', 'Swimming', '8', '18', '08:00:00',
'09:00:00', '5628');
Insert into Activity values ('0009', 'Stargazing', '8', '18', '20:00:00',
'00:00:00', '0929');
Create table Sessions (sessionID varchar(4) primary key, startDate date,
endDate date);
Insert into Sessions values ('9811', '2022-06-13', '2022-06-18');
Insert into Sessions values ('9909', '2022-06-13', '2022-06-18');
Insert into Sessions values ('5628', '2022-07-12', '2022-07-19');
Insert into Sessions values ('0929', '2022-07-12', '2022-07-16');
Create table FieldTrip (fieldTripID varchar(4) primary key, date date,
busArrival time (6), busDepart time (6), designation varchar(30), sessionID
varchar(4) references session(sessionID));
Insert into FieldTrip values ('1234', '2022-06-14', '14:00:00', '17:30:00',
'Zoo', '9811');
Insert into FieldTrip values ('5000', '2022-06-15', '13:45:00', '18:00:00',
'Aquarium', '9909');
Insert into FieldTrip values ('7700', '2022-07-17', '12:15:00', '15:15:00',
'Museum', '5628');
Insert into FieldTrip values ('0081', '2022-07-14', '11:00:00', '18:00:00',
'Playground', '0929');
Create table Enrollment (`childID` varchar(4) NOT NULL, `sessionID` varchar(10)
NOT NULL, PRIMARY KEY (`childID`, `sessionID`), paidStatus VARCHAR(10),
paymentDate date, enrollmentDate date);
Insert into Enrollment values ('7777', '0929', 'Paid', '2022-06-13',
'2022-06-13');
Insert into Enrollment values ('7878', '5628', 'Paid', '2022-06-13',
'2022-06-13');
Insert into Enrollment values ('3432', '9909', 'Paid', '2022-07-01',
'2022-07-01');
Insert into Enrollment values ('2233', '9811', 'Paid', '2022-07-12',
'2022-07-10');
Create table BelongsTo (`name` varchar(30) NOT NULL, `sessionID` varchar(4) NOT
NULL, PRIMARY KEY (`name`, `sessionID`));
Insert into BelongsTo values ('Camp Walden', '9811');
Insert into BelongsTo values ('Camp Schodack', '9909');
Insert into BelongsTo values ('Camp Reece', '5628');
Insert into BelongsTo values ('Camp Lakota', '0929');
Create table SchedueledFor (`employeeID` varchar(4) NOT NULL, `sessionID`
varchar(4) NOT NULL, PRIMARY KEY (`employeeID`, `sessionID`));
Insert into SchedueledFor values ('9872', '9811');
Insert into SchedueledFor values ('0021', '9909');
Insert into SchedueledFor values ('1025', '5628');
Insert into SchedueledFor values ('1138', '0929');
Create table AssignedTo (`employeeID` varchar(4) NOT NULL, `groupID` varchar(4)
NOT NULL, PRIMARY KEY (`employeeID`, `groupID`));
Insert into AssignedTo values ('9872', '7284');
Insert into AssignedTo values ('0021', '6281');
Insert into AssignedTo values ('1025', '1504');
Insert into AssignedTo values ('1138', '2262');
Create table TaughtBy (`employeeID` varchar(4) NOT NULL, `activityID`
varchar(4) NOT NULL, PRIMARY KEY (`employeeID`, `activityID`));
Insert into TaughtBy values ('9872', '0818');
Insert into TaughtBy values ('0021', '8837');
Insert into TaughtBy values ('1025', '8372');
Insert into TaughtBy values ('1138', '0009');
Create table SignedUp (`activityID` varchar(4) NOT NULL, `childID` varchar(4)
NOT NULL, PRIMARY KEY (`activityID`, `childID`));
Insert into SignedUp values ('0810', '7777');
Insert into SignedUp values ('8837', '7878');
Insert into SignedUp values ('8372', '3432');
Insert into SignedUp values ('0009', '2233');
Create table BelongsToActivity (`activityID` varchar(4) NOT NULL, `sessionID`
varchar(4) NOT NULL, PRIMARY KEY (`activityID`, `sessionID`));
Insert into BelongsToActivity values ('0810', '9811');
Insert into BelongsToActivity values ('8837', '9909');
Insert into BelongsToActivity values ('8372', '5628');
Insert into BelongsToActivity values ('0009', '0929');
Create table Has (`childID` varchar(4) NOT NULL, `parentID` varchar(4) NOT
NULL, PRIMARY KEY (`childID`, `parentID`));
Insert into Has values ('7777', '1101');
Insert into Has values ('7878', '3463');
Insert into Has values ('3432', '2839');
Insert into Has values ('2233', '5656');
Create table Enrolled (`childID` varchar(4) NOT NULL, `sessionID` varchar(4)
NOT NULL, PRIMARY KEY (`childID`, `sessionID`));
Insert into Enrolled values ('7777', '0929');
Insert into Enrolled values ('7878', '5628');
Insert into Enrolled values ('3432', '9909');
Insert into Enrolled values ('2233', '9811');
Create table AssignedToGroup (`childID` varchar(4) NOT NULL, `groupID`
varchar(4) NOT NULL, PRIMARY KEY (`childID`, `groupID`));
Insert into AssignedToGroup values ('7777', '7284');
Insert into AssignedToGroup values ('7878', '6281');
Insert into AssignedToGroup values ('3432', '1504');
Insert into AssignedToGroup values ('2233', '2262');
