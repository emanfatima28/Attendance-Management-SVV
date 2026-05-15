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
    status: one Status,
    markedBy: one User
}

abstract sig Status {}
one sig Present, Absent extends Status {}

// Issue #3 fix: Role-based access control model
abstract sig Role {}
one sig Teacher, Admin, StudentRole extends Role {}

sig User {
    role: one Role
}

// Issue #3 fix: only Teachers can mark attendance
fact OnlyTeacherMarksAttendance {
    all a: Attendance | a.markedBy.role = Teacher
}

sig Name {}
