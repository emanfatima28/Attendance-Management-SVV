//=====================================
// Faulty Rule (for Counterexample)
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

// ❌ Unrealistic rule
assert EveryStudentAlwaysPresent {
    all s: Student, se: Session |
        some a: Attendance |
            a.student = s and
            a.session = se and
            a.status = Present
}

// Check command
check EveryStudentAlwaysPresent for 3
