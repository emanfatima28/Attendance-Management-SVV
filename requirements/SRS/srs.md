# Software Req Specification

## Introduction
Attendance management system records and manages student attendance digitally

##Functional Requirements
1. User can login
2. Admin can add students
3. Teacher can mark attendance
4. System generates reports

##Non-Functional Requirements
1. System should respond to user actions within 2 seconds
2. System should restrict attendance marking to users with Teacher role only
3. System should be user friendly
4. System must persist all attendance records to permanent storage — records must survive page refresh and server restart
5. System must automatically reconnect to the database within 30 seconds of a server restart


\-------

\#Use cases 



##Actors

1.Teacher 

2.Student 

3.Admin 

##System States

1\.	Student Registered 

2\.	Attendance Marked 

3\.	Attendance Report Generated 

Inputs

1.Student ID 

2.Course ID 

3.Attendance status 

4.Date 

Outputs

1.Attendance reports 

2.Student attendance percentage

