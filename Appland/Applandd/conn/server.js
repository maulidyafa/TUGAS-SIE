// const{ createPool } = require('mysql');
// // import { createPool } from 'mysql';

// // const pool = createPool({
// //     host: "localhost",
// //     user: "root",
// //     password: "",
// //     database: "sie_fp",
// //     connectionLimit: 10
// // })

// const dbPool = createPool({
//     host: "localhost",
//     user: "root",
//     password: "",
//     database: "sie_fp",
// });

// export default dbPool.promise();

// export const listKota = async () => {
//     const query = `SELECT jmlh_partisipasi FROM tingkat_partisipasi`
//     return dbPool.execute(query)
// }

// // pool.query(`SELECT jmlh_partisipasi FROM tingkat_partisipasi`, (err, result, fields)=>{
// //     if(err){
// //         return console.log(err);
// //     } 
// //     else{
// //         var data = JSON.parse(JSON.stringify(result));
// //         console.log(data); 
// //         return data;
// //     }
// // })

// // export default { listKota };

// const express = require("express");
// const mysql = require("mysql");

// const app = express();

// app.listen(8000, () => {
//     console.log("server ready..");
// })

// app.set("view engine", "ejs");
// app.set("views", "views");

// const db = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "",
//     database: "sie_fp",
// })

// db.connect((err) => {
//     if(err) throw err;

//     console.log("db conn");

//     db.query("SELECT * FROM tingkat_partisipasi", (err, result) => {
//         const data = JSON.parse(JSON.stringify(result));

//         app.get("/", (req, res) => {
//             res.render("index", {tpaks : data});
//         })
//     })

    
// })