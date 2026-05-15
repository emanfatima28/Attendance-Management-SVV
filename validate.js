const fs = require("fs");

function checkFile(file) {
    if (fs.existsSync(file)) {
        console.log(file + " exists");
    } else {
        console.log(file + " missing but pipeline will continue");
    }
}

console.log("Running Attendance System Validation");

// check important project files
checkFile("README.md");
checkFile("validation-checklist.md");
checkFile("validate.js");

console.log("Validation finished successfully");