var express = require('express');
var router = express.Router();

var mysql=require('mysql');
var content;
var connection = mysql.createConnection({  
  host     : 'localhost',  
  user     : 'root',  
  password : 'root',  
  database : 'moviesite' 
});  
connection.connect(); 

//connection.end();

/* Login View */
router.get('/login', function(req, res) {
  res.render('login', { title: 'Marlin DRM Test Server', type:'login', error:'null'});
});
//Register View
router.get('/register', function(req, res) {
  res.render('login', { title: 'Marlin DRM Test Server', type:'register', error:'null'});
  //res.send('rest'+req.params.types);
});


//DO REGISTER
router.post('/doregister', function(req, res) {
	var sess=req.session;
  	console.log('doing register'+req.param('username')+req.param('password'));
 	console.log('select * from user where username='+req.param('username')+'');
 	connection.query('select * from user where username="'+req.param('username')+'"',function(err,rows,fields){
		
		if (err) throw err;
		console.log(rows.length);
		if(rows.length==0){
			connection.query('insert into user (username,password) values ("'+req.param('username')+'","'+req.param('password')+'")',function(err,rows,fields){
				if (err) throw err;
				console.log(rows);
				
				connection.query('select * from user where username="'+req.param('username')+'"',function(err,rows,fields){
					if (err) throw err;
					sess.login=rows[0].userid;
					sess.username=rows[0].username;
					res.redirect("/");
				});
			});
		}
		else {
			res.render('login', { title: 'Marlin DRM Test Server', type:'register', error: 'acountexist'});
			console.log('Account already exist'); 
		};


	});
  


});


//DO LOGIN
router.post('/dologin', function(req, res) {
 var sess=req.session;
  connection.query('Select * from user where username="'+req.param('username')+'"',function(err,rows,fields){
			if (err) throw err;
			console.log(rows[0].password);
			if(rows[0].password==req.param('password'))
			{
					sess.login=rows[0].userid;
					sess.username=rows[0].username;
					res.redirect('/');
					//res.render('login', { title: 'Marlin DRM Test Server', type:'finished', error: 'null'});		
			}
		});
 
});

//DO LOG OUT
router.get('/dologout', function(req, res) {
 //var sess=req.session;
  req.session.destroy(function(err) {
  // cannot access session here
})
  res.redirect('/');
 
});

module.exports = router;
