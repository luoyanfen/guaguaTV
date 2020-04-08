const pool = require("../util/mysqlutil.js");
class MainnModel {
	queryAllClazz(cb) {
		pool.getConnection(function(e,conn){
			const sql = "select abq,number,bigtitle,dhuliang,litter from main";
			conn.query(sql, [], function(e2, clazzes){
				conn.release();
				cb(clazzes);//调用cb方法
			});
		});
	}
}

module.exports=MainnModel;