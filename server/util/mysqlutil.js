//导入mysql模块
const mysql = require('mysql');
//使用mysql创建一个连接池对象, 通过这个连接池对象可以创建对数据库的连接
const pool = mysql.createPool({
	database: 'guaguasp',//创建的数据库名
    host: 'localhost',//ip
	port: 3306,//port
    user: 'root',//用户名
    password: 'root',//密码
})
//导入连接池对象
module.exports=pool;