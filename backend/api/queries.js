const Pool = require('pg').Pool
const pool = new Pool({
  user: 'admin',
  host: 'postgres1',
  database: 'simplon',
  password: '2zerezGZEGZ55??',
  port: 5432,
})

const getUsers = (request, response) => {
    pool.query('SELECT * FROM users', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

const allCourses = (request,response) => {
  pool.query('SELECT * FROM ')
}
  module.exports = {
    getUsers,

  }