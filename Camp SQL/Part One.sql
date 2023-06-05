Design and implement a relational database that allows the lead staff to track the number of kids registered for each session, their group placement, 
and the identity and numbers of staffers such as counselors and activity specialists, assigned to groups and activities.
This allows the lead staff to confirm that they conform to legal requirements in terms of staffing, and have someone to teach each activity. 

# Identify the entities and attributes that you will need in your database. Your report should clearly list each entity, its attributes, 
# and general data types for each attribute (integer, floating point, date, text, etc - you don't need to know the SQL specific types). 
# Also list sample data for each entity, preferably 4 or 5 sets of values. You will find these useful later when you are loading your database. 

Camps
Data format: camp name (text), location (text), minimum age (integer), maximum age (integer),
start time (fixed-length string), end time (fixed length string), description (text)
1. Camp Walden is in Diamond Point, NY, and has a minimum age requirement of 8 years
old and a maximum age requirement of 18 years old. The camp opens its gates at 8:00 am
every day and closes its gates at 5:00 pm every day. “At Walden, you’re not just gaining
an experience - you’re gaining a second home. When you are a part of the Walden family,
you are a part of something much bigger, and you’re going to love how that feels.”
2. Camp Schodack is in Nassau, NY, and has a minimum age requirement of 7 years old and
a maximum age requirement of 16 years old. The camp is open 24 hours a day every day.
“Most of our 160 staff grew up at Schodack and believe in what it stands for. Schodack is
committed to its small size, family atmosphere, and amazing traditions. We have never
met children who are so friendly and so happy.”
3. Camp Reece is in Johnsburg, NY, and has a minimum age requirement of 10 years old
and a maximum age requirement of 17 years old. The camp is open 24 hours a day every
day. “Camp Reece, located in the Adirondacks, is a sleep-away camp for individuals that
require differentiated instruction and modified activities to ensure campers of all levels,
abilities, and ages can participate fully and successfully. Our idyllic natural setting and
skilled staff provide campers with an immersive and engaging range of activities. We
emphasize empowering our campers with new skills, self-confidence, self-esteem, and
social-emotional growth, all while having fun!”
4. Camp Lakota is in Wurtsboro, NY, and has a minimum age requirement of 10 years old
and a maximum age requirement of 16 years old. The camp opens its gates at 7:45 am
every day and closes its gates at 9:30 pm every day. “Hello, Campers, Parents, and all
future Lakota Families. Camp Lakota, located just 90 miles from New York City, sits
high atop the Wurtsboro Hills in the foothills of the Catskill Mountains. We are situated
on 200 of the most beautiful acres of land. Our magnificent Masten Lake with its sandy
beaches and diverse waterfront sports has helped make Lakota a family tradition for 90
years.”
Sessions
Data format: session ID number (integer), sessions enrolled in (integer), start date (date), end
date (date)
1. The session ID number is 9811 and they are enrolled in one session. The session starts on
June 13, and the session ends on June 18.
2. The session ID number is 9909 and they are enrolled in one session. The session starts on
June 13, and the session ends on June 18.
3. The session ID number is 5628 and they are enrolled in two sessions. The sessions start
on July 12, and the sessions end on July 19.
4. The session ID number is 0929 and they are enrolled in three sessions. The sessions start
on July 12, and the sessions end on July 16.
Child
Data format: ID number (integer) , first name (text), last name (text), age (integer) , next year
grade level (integer), parents (text)
1. Greg Jones has an ID number of 7777 and is 11 years old. His next year's grade level is
grade 7 and his parent is Samantha Jones.
2. Rebecca Griffin has an ID number of 7878 and is 12 years old. Her next year's grade
level is grade 8 and her parent is Kevin Griffin.
3. Marc Jacobs has an ID number of 3432 and is 9 years old. His next year's grade level is
grade 5 and his parent is Carl Jacobs.
4. Stephanie Smith has an ID number of 2233 and is 10 years old. Her next year's grade
level is grade 6 and her parent is Alexis Smith.
Parent
Data format: ID number (integer), first name (text), last name (text), address (text), home phone
(fixed-length string), work phone (fixed-length string)
1. Samantha Jones has an ID number of 1101 and lives at 542 W Adams Road with a home
phone number of 347-555-6734 and a work phone number of 718-834-8888.
2. Kevin Griffin has an ID number of 3463 and lives at 236 Booth Street with a home phone
number of 347-777-3464 and a work phone number of 347-333-3333.
3. Carl Jacobs has an ID number of 2839 and lives at 892 W Marc Street with a home phone
number of 718-738-3473 and a work phone number of 646-239-8528.
4. Alexis Smith has an ID number of 5656 and lives at 1234 Addleton Street with a home
phone number of 718-897-3435 and a work phone number of 718-999-8373.
Enrollment
Data Format: first name (text), last name (text), session ID number (integer), date of enrollment
(date), paid status (text), date of payment (date),
1. Greg Jones has a session ID number is 9811 and the enrollment date is June 13, the status
has been paid and the date of payment was June 13.
2. Rebecca Griffin has a session ID number of 9909 and the enrollment date is June 13, the
status has been paid and the date of payment was June 13.
3. Marc Jabocs has a session ID number of 5628 and the enrollment date is July 1, the status
has been paid and the date of payment was July 1.
4. Stephanie Smith has a session ID number of 0929 and the enrollment date is July 10, the
status has been paid and the date of payment was July 12.
Group
Data format: group ID (integer), first name (text), last name (text), age (integer), number of kids
already enrolled (integer)
1. The group ID number is 7284 and the kids in this group are Marc Jacobs who is 9 years
old and Stephanie Smith who is 10 years old. There are only two kids enrolled in this
group.
2. The group ID number is 6281 and the kid in this group is Marc Jacobs who is 9 years old.
There is only one kid enrolled in this group.
3. The group ID number is 1504 and the kids in this group are Stephanie Smith who is 10
years old and Rebecca Griffin who is 12 years old. There are only two kids enrolled in
this group.
4. The group ID number is 2262 and the kids in this group are Stephanie Smith who is 10
years old and Greg Jones 11 years old. There are only two kids enrolled in this group.
Activity
Data Format: taught by (text), ID number (integer), name (text), start time (fixed-length string),
end time (fixed-length string), minimum age (integer), maximum age (integer)
1. The activity ID number is 0818 and is taught by a counselor. Canoeing starts at 12:00 pm
and ends at 3:00 pm. The minimum age requirement is 8 years old and the maximum age
requirement is 18 years old.
2. The activity ID number is 8837 and is taught by a counselor. Arts and Crafts starts at
10:00 am and ends at 2:00 pm. The minimum age requirement is 8 years old and the
maximum age requirement is 18 years old.
3. The activity ID number is 8372 and is taught by a specialist. Swimming starts at 8:00 am
and ends at 9:00 am. The minimum age requirement is 8 years old and the maximum age
requirement is 18 years old.
4. The activity ID number is 0009 and is taught by a specialist. Stargazing starts at 8:00 pm
and ends at 12:00 am. The minimum age requirement is 8 years old and the maximum
age requirement is 18 years old.
Field Trip
Data Format: field trip ID number (integer), designation (text), date (date), bus arrival time
(fixed-length string), bus departure time (fixed-length string)
1. The field trip ID number is 1234. The designation is the zoo on Monday and the bus
arrives at 2:00 pm and leaves at 5:30 pm.
2. The field trip ID number is 5000. The designation is the aquarium on Thursday and the
bus arrives at 1:45 pm and leaves at 6:00 pm.
3. The field trip ID number is 7700. The designation is the museum on Friday and the bus
arrives at 12:15 pm and leaves at 3:15 pm.
4. The field trip ID number is 0081. The designation is the playground on Wednesday and
the bus arrives at 11:00 am and leaves at 6:00 pm.
Employee
Data Format: Employee ID number (integer), first name (text), last name (text), age (integer),
position type (text), start date (text), end date (text)
1. Sandra Gomez is an employee and has an employee ID number of 9872. Sandra is 18 and
works as a camp director. She will work at the camp starting May 1 and ending May 25.
2. Amy Lee is an employee and has an employee ID number of 0021. Amy is 17 and works
as an activity specialist. She will work at the camp starting June 1 and ending June 15.
3. Brandon Garcia is an employee and has an employee ID number of 1025. Brandon is 18
and works as an assistant camp director. He will work at the camp starting July 2 and
ending July 18.
4. Juan Rodrigues is an employee and has an employee ID number of 1138. Juan is 16 and
works as a junior counselor. He will work at the camp starting July 1 and ending July 15.
