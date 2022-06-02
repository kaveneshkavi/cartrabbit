const {createPool} = require('mysql')

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "",
    //connectionLimit: 10
})
pool.query('SELECT * FROM mydb.users',(err, res)=>{
    return console.log(res)
})
