const express = require('express');
const mysql = require('mysql2');
const inquirer = require('inquirer');
const PORT = process.env.PORT || 3001;
const app = express();
const util = require("util");

app.use(express.urlencoded({ extended: false }));
app.use(express.json());
const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'companyDB'
    },
    console.log(`Connected to the companyDB database.`)
  );
const query = util.promisify(db.query).bind(db);

function startInq() {
inquirer 
    .prompt([
        {
            name: 'selection',
            type: 'list',
            message: 'What would you like to do?',
            choices: ['View all employees', 'View all roles', 'View all Departments', 'Quit' ]
        },
    ])
    .then((answer) => {
        const {selection} = answer;
        console.log(selection);
        if (selection === "View all employees" ) {
             query('SELECT * FROM employees').then(data => {
                console.log(data);
                startInq();
             });
            //  , function (err, results) {
              
        } else if (selection === "View all roles") {
            query('SELECT * FROM roles').then(data => {
                console.log(data);
                startInq();
             });
              
        } else if (selection === "View all Departments") {
            query('SELECT * FROM department').then(data => {
                console.log(data);
                startInq();
             });
        } else if (selection === "Quit") {
            query('EXIT').then(data => {
                
             });
        };
    
    });
};
startInq();
