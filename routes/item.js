var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var connection = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password : '123456',
  database:'liuyan'
});
//增加
router.post('/dta', function(req, res, next) {
  a=req.body.name 

;
  b=req.body.tit;
  res.header('Access-Control-Allow-Origin','*');
  connection.query("INSERT INTO  list(name,con) VALUES('"+a+"','"+b+"')", function(err, rows, fields) {
    res.send(rows);
});
  });
//查询
router.post('/list', function(req, res, next) {
  res.header('Access-Control-Allow-Origin','*')    ;
  connection.query("SELECT * FROM list", function(err, rows, fields) {
    res.send(rows);
});
});
//删除
router.post('/del', function(req, res, next) {
  var id=req.body.id 

;
  res.header('Access-Control-Allow-Origin','*');
  connection.query("DELETE FROM list WHERE id="+id, function(err, rows, fields) {
    res.send(rows);
});
  });
module.exports = router; 
