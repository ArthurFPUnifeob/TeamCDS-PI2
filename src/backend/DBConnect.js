import { createConnection } from 'mysql2';

export class DBConnect {
    constructor(host, user, password, database) {
        this.connection = createConnection({
            host: host,
            user: user,
            password: password,
            database: database
        })
    }

    requisition(query) {

        this.connection.connect((err) => {
            if (err) {
                console.log("An error ocurred on connect to database");
                console.log(err.code);
                console.log(err.fatal);
            }
        })

        this.connection.query(String(query), (err, rows, fields) => {
            if (err) {
                console.log("An error ocurred performing the query.");
                console.log(err);
                return;
            }

            console.log("Query succesfully executed", rows);
        })

        this.connection.end((err) => {
            if(err){
                console.log("An error ocurred on connect to database");
                console.log(err.code);
                console.log(err.fatal);
            }
         })
    }
}