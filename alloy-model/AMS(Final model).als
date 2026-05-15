//=====================================
// Correct Model (No Counterexample)
//=====================================

sig Student {}
sig Session {}

sig Attendance {
    student: one Student,
    session: one Session,
    status: one Status
}

abstract sig Status {}
one sig Present, Absent extends Status {}

// Realistic constraint (no contradiction)
fact FlexibleAttendance {
    // Students may or may not attend sessions
    // No forced universal attendance
}

// Optional assertion (safe check)
assert ValidStatus {
    all a: Attendance |
        a.status = Present or a.status = Absent
}

// This will PASS (NO counterexample)
check ValidStatus for 3
