//=====================================
// Constraints
//=====================================

// No duplicate attendance for same student-session pair
fact NoDuplicateAttendance {
    all s: Student, se: Session |
        lone a: Attendance |
            a.student = s and a.session = se
}

// Session belongs to exactly one course
fact SessionBelongsToCourse {
    all s: Session |
        one s.course
}

// Attendance must be valid
fact ValidAttendance {
    all a: Attendance |
        some a.student and some a.session
}
