import { isArray } from "chart.js/dist/helpers/helpers.core.js";
import { DBConnect } from "./DBConnect.js"
import envvars from  "./env.js"

class DBHandler extends DBConnect {
    constructor(host, user, password, database) {
        super(host, user, password, database);
    }
    zip(array1, array2){
        return array1.map((k, i) => [k, array2[i]])
    }
    insert(arrTableName, arrColumsName, arrValues){
        /* arrTableName, arrColumsName, arrValues - devem ser do tipo array */
        if(isArray(arrColumsName) && isArray(arrTableName) && isArray(arrValues)){
            this.requisition(`INSERT INTO ${arrTableName} (${arrColumsName}) VALUES ${arrValues};`)
        }else{
            throw new Error("DBHandles.insert - todos os parametros devem ser arrays"); 
        }
    }
    update(arrTableName, arrColumsName, arrValues, condition){



        
        this.requisition(`update ${arrTableName} (${arrColumsName}) VALUES ${arrValues};`)
    }
}
const DBHandler = new DBHandler(envvars[0], envvars[1], envvars[2], envvars[3])
export default DBHandler