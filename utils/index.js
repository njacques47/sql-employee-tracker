const express = require('express');
const inquirer = require('inquirer');
const mysql = require('mysql2');
const console_table = require('console.table');
const fs = require('fs');

const db = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'employee_directory_db'
  }
)

// questions to add an employee
const employeeOnboardingQs = [
  {
    type: "input",
    name: "firstName",
    message: "What is the first name of the new hire?",
  },
  {
    type: "input",
    name: "lastName",
    message: "What is the last name of the new hire?",
  },
  {
    type: "number",
    name: "salary",
    message: "What is the salary of the new hire?",
  },
  {
    type: "input",
    name: "department",
    message: "What department will they go to?"
  },
  {
    type: "input",
    name: "role",
    message: "What is their role?",
  }
];

// view all employees
function viewEmployees() {
  let sql = `SELECT * FROM employees`
};

// add employee function
const addEmployees = () => {
  //
};

function promptDirectory() {
  prompt([
    {
      type: "list",
      name: "task",
      message: "What would you like to do?",
      choices: [
        {
          name: "View All Employees",
          value: "view_employees"
        },
        {
          name: "Add Employee",
          value: "new_employee"
        },
        {
          name: "Update Employee",
          value: "update_employee"
        },
      ]
    }
  ]).then((answer) => {
    switch(answer) {
      case "view_employees":
        viewEmployees();
        break;
      case "add_employees":
        addEmployees();
        break;
      case "add_employees":
        addEmployees();
        break;
    }
  })
}