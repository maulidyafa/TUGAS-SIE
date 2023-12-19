const{
    createPool
} = require('mysql');

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "sie_fp",
    connectionLimit: 10
})

pool.query(`SELECT kota FROM kota`, (err, result, fields)=>{
    if(err){
        return console.log(err);
    } 
    else{
        var data = JSON.parse(JSON.stringify(result));
        return console.log(data); 
    }
})

module.exports = pool;