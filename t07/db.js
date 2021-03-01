const mysql = require('mysql2')
const config = require('./config.json')

const enter = mysql.createConnection(config)

enter.connect(function (err){
    if(err){
        return console.error("ERROR: " + err.message)
    } else {
        console.log("Connection --- ok")
    }
})

module.exports = enter