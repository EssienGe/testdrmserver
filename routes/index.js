var express = require('express');
var router = express.Router();
//opendb get movie list
var mysql=require('mysql');
var content;
var connection = mysql.createConnection({  
  host     : 'localhost',  
  user     : 'root',  
  password : 'root',  
  database : 'moviesite' 
});  
connection.connect(); 
connection.query('select * from movies where movieid<=18',function(err,res,fields){
	if (err) throw err;
	console.log(res);
	content=res;

});
connection.end();


/* GET home page. */
router.get('/', function(req, res) {
	sess=req.session;
	if (sess.login){
		console.log("session.login="+sess.login);
	  	res.render('index', { title: 'Marlin DRM Test Server' , content: content, userid: sess.login, username:sess.username });
		}
	else{
		res.render('index', { title: 'Marlin DRM Test Server' , content: content, userid: "", username:"" });
		}
	

});

module.exports = router;
