# Queries
-- Question 1
-- Since we do not have Camp Rainbow, we will use Camp Walden
SELECT DISTINCT Enrolled.childID AS 'Child ID Number', Sessions.sessionID AS 
'Session ID Number', Camp.name AS 'Camp Name'
FROM Enrolled, Sessions, Child, Camp
WHERE Enrolled.sessionID = Sessions.sessionID
AND camp.name = sessions.campname
AND camp.name = "Camp Walden";

-- Question 2
-- Since we do not have Archery as an Activity, we will be using Swimming
SELECT DISTINCT child.fname AS 'Child First Name', child.lname AS 'Child Last 
Name', child.age AS 'Child Age', Sessions.startDate AS 'Session Start Date', 
Sessions.endDate AS 'Session End Date', Sessions.sessionID AS 'Session ID', 
Activity.name AS 'Activity Name'
FROM Child, Activity, Sessions, Enrolled
WHERE Sessions.sessionID = enrolled.sessionID
AND Activity.sessionID = Sessions.sessionID
AND child.childID = enrolled.childID
AND Activity.name = "Swimming";

-- Question 3
-- Since we do not have Camp Galaxy Junior, we are using Camp Lakota
SELECT CampGroup.groupID AS 'Groups for Session 4', COUNT(AssignedToGroup.groupID) 
AS 'Number of Children'
FROM CampGroup, AssignedToGroup, Sessions, Camp
WHERE AssignedToGroup.groupID = CampGroup.groupID
AND Campgroup.sessionID = Sessions.sessionID
AND Sessions.campname = Camp.name
AND Camp.name = "Camp Lakota"
GROUP BY CampGroup.groupID;

-- Question 4
SELECT s1.sessionID, s1.cntEmployeeID
FROM
(SELECT s.sessionID, COUNT(s.employeeID) AS "cntEmployeeID"
FROM schedueledfor AS s
GROUP BY s.sessionID) AS s1 -- subquery
WHERE s1.cntEmployeeID > 2;

-- Question 5
SELECT c.fname AS "First Name", c.lname AS "Last Name", c.Age, e.sessionID as 
"Session ID", e.enrollmentDate as "Enrollment Date", e.paidStatus as "Paid Status"
FROM enrolled as e, sessions as s, child as c
WHERE e.sessionID = s.sessionID
AND e.childID = c.childID
AND e.enrollmentDate = (SELECT MIN(enrollmentDate) 
FROM enrolled);

-- Question 6
SELECT *
FROM (SELECT DISTINCT c.name AS 'Camp Name', c.minAge AS 'Camp Minimum Age', 
c.maxAge AS 'Camp Maximum Age', ch.lname AS 'Child Last Name', ch.fname AS 'Child 
First Name', ch.age AS 'Child Age'
FROM child as ch, sessions as s, camp as c, signedup as si, activity as a
WHERE si.childID = ch.childID
AND si.activityID = a.activityID
AND a.sessionID = s.sessionID
AND ch.age < c.minage
AND s.CampName = c.name
union
SELECT DISTINCT c.name AS 'Camp Name', c.minAge AS 'Camp Minimum Age', c.maxAge AS 
'Camp Maximum Age', ch.lname AS 'Child Last Name', ch.fname AS 'Child First Name', 
ch.age AS 'Child Age'
FROM child as ch, sessions as s, camp as c, signedup as si, activity as a
WHERE si.childID = ch.childID
AND si.activityID = a.activityID
AND a.sessionID = s.sessionID
AND ch.age > c.maxage 
AND s.CampName = c.name) as c
ORDER BY 1 ASC;

-- Question 7
SELECT DISTINCT FieldTrip.FieldTripID AS 'Field Trip ID', FieldTrip.desitination AS
'Field Trip Destination', FieldTrip.date AS 'Field Trip Date', FieldTrip.busDepart 
AS 'Bus Departure', CampGroup.groupID AS 'Group ID', Child.fname AS 'Child First 
Name', Child.lname AS 'Child Last Name'
FROM FieldTrip, CampGroup, Child, Sessions, AssignedToGroup
WHERE FieldTrip.date = "2022-07-17"
AND CampGroup.sessionID = FieldTrip.sessionID
AND AssignedToGroup.childID = child.ChildID
AND AssignedToGroup.groupID = CampGroup.groupID;

-- Question 8
SELECT DISTINCT employee.employeeID AS 'Employee ID', employee.fname AS 'Employee 
First Name', employee.lname AS 'Employee Last Name', sessions.campname AS 'Camp 
Name', sessions.sessionID as 'Session ID', employee.position AS 'Position Title'
FROM employee, sessions, camp
WHERE camp.name = sessions.campname
AND employee.name = camp.name
AND employee.position like "%Director%";

-- Question 9
-- Camp Walden officially ends at 17:00:00 (5:00 pm), but the bus returning from a 
trip to the Zoo is schedueled to arrive at 17:30:00 (5:30 pm).
SELECT Camp.name AS 'Camp Name', FieldTrip.fieldTripID AS 'Field Trip ID', 
FieldTrip.sessionID AS 'Session ID', FieldTrip.date AS 'Field Trip Date', 
FieldTrip.busDepart AS 'Bus Return Time'
FROM Camp, FieldTrip, Sessions
WHERE Camp.endTime < FieldTrip.busDepart
AND FieldTrip.sessionID = Sessions.sessionID
AND Sessions.campname = Camp.name;

-- Question 10
-- This code is telling us the basic summary for the camp. As a camp director, you 
will see how many children are enrolled in a specific
-- camp, the childs enrollment date period and how many unpaid/paid children are in
that camp.
SELECT c.name as "Camp Name", COUNT(e.childID) as "# of Child's", 
minDate.firstdateEnrolled, maxDate.lastdateEnrolled, paid.cntPaid as "# of Paid 
Children", unpaid.cntnotPaid as "# of unPaid Children"
FROM enrolled as e inner join sessions as s on e.sessionID = s.sessionID inner join
camp as c on s.campname = c.name
left join
(SELECT MIN(en.enrollmentDate) AS firstdateEnrolled, se.campname
FROM enrolled as en, sessions as se
WHERE en.sessionID = se.sessionID
GROUP BY se.campname) AS minDate on c.name = minDate.campname
left join (SELECT MAX(en.enrollmentDate) AS lastdateEnrolled, se.campname
FROM enrolled as en, sessions as se
WHERE en.sessionID = se.sessionID
GROUP BY se.campname) AS maxDate on c.name = maxDate.campname left join
(SELECT COUNT(en.childID) AS cntPaid, se.campname
FROM enrolled as en, sessions as se
WHERE en.sessionID = se.sessionID
AND en.paidStatus = 'Paid'
GROUP BY se.campname) AS paid on c.name = paid.campname
left join
(SELECT COUNT(en.childID) AS cntnotPaid, se.campname
FROM enrolled as en, sessions as se
WHERE en.sessionID = se.sessionID
AND en.paidStatus = 'unPaid'
GROUP BY se.campname) AS unpaid on c.name = unpaid.campname
WHERE e.sessionID = s.sessionID
AND c.name = s.campname
AND c.name = minDate.campname
AND c.name = maxDate.campname
GROUP BY c.name;
