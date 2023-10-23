import { DBConnect } from "./DBConnect.js"

class DBHandler extends DBConnect {
    constructor(host, user, password, database) {
        super(host, user, password, database);
    }
    insert(table, attributeName, values){
        this.requisition(`insert into ${table} (${attributeName}, ${values})`)
    }
}
const DBHandler = new DBHandler('127.0.0.1', 'root', '#1234Tur', 'teamcds-pi2db')
export default DBHandler