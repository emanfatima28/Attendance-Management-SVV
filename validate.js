// Validation script for Attendance Management System

const fs = require("fs");

function validate(file){
    if(fs.existsSync(file)){
        console.log(file + " exists");
    } else {
        console.log(file + " missing");
        process.exit(1);
    }
}

console.log("Running validation checks");

validate("app.js");
validate("package.json");