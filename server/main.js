const express = require("express");//导入express
const app = express();
app.use(express.static(__dirname+"/public"));//静态文件存放目录 

const bodyParser=require("body-parser");
app.use(bodyParser.urlencoded({extended:false}));

const path = require('path');//不需要下载, path是属于node.js的内置模块
const mainnController = require("./controller/mainnController.js");
const mainController = new mainnController();

//过滤器, 
app.use("/*", function(req, res, next){
		//设置跨域时，客户端域名
		res.setHeader("Access-Control-Allow-Origin", "*");
		next();//往下走
})

//接收客户端的请求
app.post("/Clazz.do",function(req, res){
	let method = req.body.method;
	if(method=="queryAll") {
		mainController.queryAll(req,res)
	}
});
const ClazzController = require("./controller/ClazzController.js");
const clazzController = new ClazzController();
app.post("/Clibiao.do",function(req, res){
	let method = req.body.method;
	if(method=="queryAll") {
		clazzController.queryAll(req,res)
	}
});

var server = app.listen(4000, function () {
  console.log("服务器正在监听客户端的请求4000端口......");
})