const dbConnection = require("../database/db_connection");
const getData = cb => {
  dbConnection.query("SELECT * FROM people", (err, res) => {
    if (err) return cb(err);
    cb(null, res.rows);
  });
};

module.exports = getData;
