var express = require('express');
var app = express();
const bodyParser = require('body-parser');
const pg = require('pg');
const R = require('ramda');
var cors = require('cors');
app.use(cors());

const cs = 'postgres://postgres:Postgres@localhost:5432/timetable';

const client = new pg.Client(cs);

client.connect();
let arr = [];
app.post('/teacher',function(request,response){	
console.log("123");

	client.query('SELECT tname FROM teacher').then(res => {

		const data = res.rows;
		
		//console.log(data);
		for(var i=0,len=data.length;i<len;i++){
			arr.push(`${data[i].tname}`);
		}
		console.log(arr);
		response.status(200).send(arr);
	}).finally(() => {
		client.end()
	});			
});

app.listen(4000,function(){
	console.log("ok");
})





 
/*pool.query("Insert into teacher(tname,department,available,count) values($1,$2,$3,$4)",(err,res)=>{
	console.log("ok")
	pool.end()
	$Object.values(res.rows[0])[0]
})*/


