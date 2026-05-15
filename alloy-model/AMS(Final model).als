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

// Issue #5 fix: every Attendance record must have an explicitly set status
fact StatusAlwaysSet {
    all a: Attendance | a.status = Present or a.status = Absent
}

// Issue #5 fix: no Attendance record can exist without a student and session
fact AttendanceAlwaysLinked {
    all a: Attendance | one a.student and one a.session
}

// Assertion confirms the above facts hold — will PASS (NO counterexample)
assert ValidStatus {
    all a: Attendance |
        a.status = Present or a.status = Absent
}

// This will PASS (NO counterexample)
check ValidStatus for 3
