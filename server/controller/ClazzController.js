const ClazzModel = require('../model/ClazzModel.js')
class ClazzController {
	constructor() {
	    this.clazzModel = new ClazzModel();
	}
	queryAll(req,res) {
		let s = this.clazzModel.queryAllClazz(function(clazzes){
			res.json(clazzes);
		});
	}
}
module.exports=ClazzController;
