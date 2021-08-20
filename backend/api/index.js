'use strict';
const express = require('express');
const bodyParser = require('body-parser')
const app = express()
const db = require('./queries')

const PORT = 8080;
const HOST = '0.0.0.0';

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
  response.json({ info: 'Hello clement' })
})

app.get('/allCourses', (request, response) => {
  response.json({ info: 'all courses' })
})

app.get('/users', db.getUsers)

app.listen(PORT, HOST);

console.log(`Running on http://${HOST}:${PORT}`);
