# Create your table schemas from the ER model. Hand in  a report that describes each table's purpose, as well as its schema.
# Specify the primary and foreign keys.  However, do not use SQL statements at this point. 
# Use the table schema format we have been using: tablename(col1, col2,....) with the primary key column(s) underlined and either 
# arrows to indicate the foreign keys, or a statement of the form "col1 is a foreign key referring to col A in table B".

Camp(name, location, minAge, maxAge, startTime, endTime, description)
Employee(employeeID, fname, lname, age, startDate, endDate, position, campname, groupID)
(Campname is a foreign key that refers to camp, groupID is a foreign key that refers to group)
Group(groupId, fname, lname, age, sessionID)
(session ID is a foreign key referring to session)
Child(childID, fname, lname, age, nextYear)
Enrolled(childID, sessionID, paidStatus, paymentDate, enrollmentDate)
(childId is from child, sessionID is from session)
Parent(parentID, fname, lname, homePhone, workPhone, street, city, ZIP, childID)
(childID is a foreign key referring to child)
Activity(activityID, name, minAge, maxAge, startTime, endTime)
Sessions(sessionID, startDate, endDate)
FieldTrip(fieldTripID, date, busArrival, busDepart, designation, sessionID)
(session ID is a foreign key referring to session)
