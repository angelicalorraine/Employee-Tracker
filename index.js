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
        .then(function (answer) {
            connection.query('INSERT INTO department SET ?',
                {
                    dept_name: answer.dept_name
                },
                (err) => {
                    if (err) throw err;
                    console.log(`\nDepartment "${response.name}" was sucessfully added.\n`)
                });
            createTracker();
        });
};

const addRole = () => {
    inquirer
        .prompt([
            {
                name: 'choice',
                type: 'rawlist',
                message: 'What Department does Role belong to?',
                choices() {
                    const choiceArray = [];
                    results.forEach(({ dept_name }) => {
                        choiceArray.push(dept_name);
                    });
                    return choiceArray;
                },

            },

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
        .then(function (answer) {
            const dept = response.choice;
            const newId = results.find(x => x.dept_name === dept).id;
            connection.query('INSERT INTO Role SET ?',
                {
                    dept_id: newId,
                    title: answer.title,
                    salary: answer.salary
                },
                (err) => {
                    if (err) throw err;
                    console.log(`\nRole ${response.title} was successfully added.\n`)
                    createTracker();
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
        {
            name: 'choice',
            type: 'rawlist',
            message: 'What is Employees Role?',
            choices() {
                const choiceArray = [];
                results.forEach(({ title }) => {
                    choiceArray.push(title);
                });
                return choiceArray;
            },

        },

        ])
        // Finds employees chosen role with correct id
        .then(function (response) {
            const role = response.choice;
            const newId = results.find(x => x.title === role).id;

            connection.query('INSERT INTO Role SET ?',
                {
                    role_id: newId,
                    first_name: response.first_name,
                    last_name: response.last_name,

                },
                (err) => {
                    if (err) throw err;
                    console.log(`\nEmployee ${response.first_name} ${response.last_name} was successfully added.\n`);
                    createTracker();
                });

        });
};