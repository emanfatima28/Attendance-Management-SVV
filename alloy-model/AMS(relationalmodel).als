//=====================================
// Relational Model
// Student Attendance System
//=====================================

sig Student {
    sid: one Int,
    name: one String
}

sig Course {
    cid: one Int,
    cname: one String
}

sig Session {
    course: one Course,
    date: one Int
}

sig Attendance {
    student: one Student,
    session: one Session,
    status: one Status
}

abstract sig Status {}
one sig Present, Absent extends Status {}

sig Name {}
