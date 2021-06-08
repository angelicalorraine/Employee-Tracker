const mysql = require('mysql');
const inquirer = require('inquirer');
require('dotenv').config();

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

connection.connect((err) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}\n`);
    //Add start function
    createTracker();
})

//Start of prompt - select
const createTracker = () => {
    inquirer.prompt({
        name: 'main',
        type: 'list',
        message: 'What would you like to do?',
        choices: [
            'Add a Department',
            'Add a Role',
            'Add an Employee',
            'Exit',
        ],
    })
        .then((answer) => {
            switch (answer.action) {
                case 'Add a Department':
                    addDepartment();
                    break;

                case 'Add a Role':
                    addRole();
                    break;

                case 'Add a Employee':
                    addEmployee();
                    break;

                case 'Exit':
                    connection.end;
                    break;

                default:
                    console.log(`Invalid action: ${answer.action}`);
                    break;
            }
        });
};


const addDepartment = () => {
    inquirer
        .prompt({
            name: 'dept_name',
            type: 'input',
            message: 'Name of Department'
        })
        .then((answer) => {
            connection.query('INSERT INTO department SET ?',
                { dept_name: answer.dept_name },
                (err, res) => {
                    if (err) throw err;
                    console.log(`${res.affectedRows} Employee inserted!\n`)
                });
            createTracker();
        });
};

const addRole = () => {
    inquirer
        .prompt([
            {
                name: 'title',
                type: 'input',
                message: 'Name of Role'
            },
            {
                name: 'salary',
                type: 'input',
                message: 'Salary Amount:'
            },
            // add department selection
        ])
        .then((answer) => {
            connection.query('INSERT INTO Role SET ?',
                { title: answer.title, salary: answer.salary },
                (err, res) => {
                    if (err) throw err;
                    console.log(`${res.affectedRows} Role inserted!\n`)
                });
        });
};

const addEmployee = () => {
    inquirer
        .prompt([{
            name: 'first_name',
            type: 'input',
            message: 'Employees First Name:'
        },
        {
            name: 'last_name',
            type: 'input',
            message: 'Employees Last Name:'
        },
            //add role & department
        ])
        .then((answer) => {
            connection.query('INSERT INTO Role SET ?',
                { title: answer.title, salary: answer.salary },
                (err, res) => {
                    if (err) throw err;
                    console.log(`${res.affectedRows} Role inserted!\n`)
                });
        });
};