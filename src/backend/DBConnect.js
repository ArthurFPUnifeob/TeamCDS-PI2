import { createConnection } from 'mysql2';
require('dotenv').config()

class DBConnect {
    constructor(host, user, password, database) { 
        createConnection({
        host: host,
        user: user,
        password: password,
        database: database
    }) }

    requisition(query){
        connection.connect((err) => {
            // in case of error
            if (err) {
                console.log(err.code);
                console.log(err.fatal);
            }
        })
    
    
        connection.query(String(query), (err, rows, fields) => {
                if (err) {
                    console.log("An error ocurred performing the query.");
                    console.log(err);
                    return;
                }

                console.log("Query succesfully executed", rows);
            })
    
        // Close the connection
        connection.end(() => {}) 
    }
}