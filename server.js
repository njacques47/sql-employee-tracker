// note to self: double check that all required dependences are declared
const express = require('express');
const inquirer = require('inquirer');
const mysql = require('mysql2');
const consoleTable = require('console.table');


const PORT = process.env.PORT || 3001;
const app = express();

// express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());




// listen for the server
app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}.`);
})