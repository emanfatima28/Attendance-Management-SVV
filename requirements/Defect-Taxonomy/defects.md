|           Requirement                  |  |     Defect type    |  |                    Issue / Resolution                          |
|  system should be fast                 |  |   Ambiguity        |  |  "fast" not defined — fixed: respond within 2 seconds          |
|  Teacher marks anytime                 |  |   Inconsistency    |  |  conflicts with schedule                                       |
|  System should be secure               |  |   Non-verifiable   |  |  no measurable criteria — fixed: role-based access specified   |
|  Login must redirect to dashboard      |  |   Functional       |  |  Issue #1 — Login postcondition added to VDM++ spec            |
|  Attendance must be persisted          |  |   Persistence      |  |  Issue #2 — persistedAttendance variable added to VDM++ spec   |
|  Only teachers access attendance page  |  |   Security         |  |  Issue #3 — Role precondition added to MarkAttendance in VDM++ |
|  DB must reconnect after restart       |  |   Integration      |  |  Issue #4 — NFR added to SRS: reconnect within 30 seconds      |
|  Attendance status must be correct     |  |   Logic            |  |  Issue #5 — violates VDM++ postcondition and Alloy ValidStatus |
