import { DBConnect } from "./DBConnect.js"
import envvars from  "./env.js"

class DBHandler extends DBConnect {
    constructor(host, user, password, database) {
        super(host, user, password, database);
    }
    insert(table, attributeName, values){
        this.requisition(`insert into ${table} (${attributeName}, ${values})`)
    }
}
const DBHandler = new DBHandler(envvars[0], envvars[1], envvars[2], envvars[3])
export default DBHandler