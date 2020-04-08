const pool = require("../util/mysqlutil.js");
class ClazzModel {
	//查出所有的班级信息
	queryAllClazz(cb) {
		pool.getConnection(function(e,conn){
			const sql = "select img,time,wenzi1,wenzi2 from moveinfo";
			conn.query(sql, [], function(e2, clazzes){
				conn.release();
				cb(clazzes);//调用cb方法
			});
		});
	}
}

module.exports=ClazzModel;