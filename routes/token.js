//para1 char tokentype=enum{"register","license",}
//if regester para userid 
//if license para userid contentid
var express = require('express');
var router = express.Router();

var https = require('https');
var querystring = require('querystring');
var tokenres;
/* GET home page. */
router.get('/', function(req, res) {
	//Regestration Token
	var tokentype=req.param('tokentype');
	if (tokentype=='register'){
		var	userid=req.param('userid');
		var post_data = querystring.stringify({
				customerAuthenticator:'1043,3c3277964be34d7789258089d653b8df',
				actionTokenType: 0,
				userId: userid,
				userKey: '000102030405060708090a0b0c0d0e0f'
		});
		//post_data='customerAuthenticator=1043,3c3277964be34d7789258089d653b8df&'+post_data;
console.log(post_data);
		var options = {
		    host: 'bb-gen.test.expressplay.com', 
		    port: 443,
		    headers:{'Content-Type': 'application/x-www-form-urlencoded'},
		    path: '/hms/bb/token',
		    method: 'POST'

		};
	}
	//Licnese: Buy to Own
	else if (tokentype=='license'){
		var	userid=req.param('userid');
		var contentid=req.param('contentid');
		var post_data = querystring.stringify({
			customerAuthenticator:'1043,3c3277964be34d7789258089d653b8df',
				actionTokenType: 1,
				userId: userid,
				contentId: "urn:philips:drm:content:"+contentid,
				contentKey:'000102030405060708090a0b0c0d0e0f',
				rightsType:'BuyToOwn',
				userKey: '000102030405060708090a0b0c0d0e0f'
		});
		
		var options = {
		    host: 'bb-gen.test.expressplay.com', 
		    port: 443,
		    path: '/hms/bb/token',
		    headers:{'Content-Type': 'application/x-www-form-urlencoded'},
		    method: 'POST'

		};
	}

	
//Retrive toke from HMS
		var tokenreq = https.request(options, function(tokenres) {
			//console.log(err);
		  console.log('STATUS: ' + tokenres.statusCode);
		  console.log('HEADERS: ' + JSON.stringify(tokenres.headers));
		  tokenres.setEncoding('utf8');
		  tokenres.on('data', function (chunk) {
		    console.log('BODY: ' + chunk);
		   	res.send(chunk);
		  });
		});

		// write data to request body
		tokenreq.write(post_data);
		tokenreq.end();
		tokenreq.on('error', function(e) {
  			console.error(e);
		});
		//res.send(tokenres);
		
	});

	module.exports = router;
