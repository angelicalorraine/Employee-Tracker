const mysql = require('mysql');
const inquirer = require('inquirer');
require('dotenv').config();

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
});

connection.connect((err) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}\n`);
    //Add start function
})