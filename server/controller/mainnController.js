const mainnModel = require('../model/mainnModel.js')
class MainController {
	constructor() {
	    this.mainnModel = new mainnModel();
	}
	queryAll(req,res) {
		let s = this.mainnModel.queryAllClazz(function(clazzes){
			res.json(clazzes);
		});
	}
}
module.exports=MainController;
