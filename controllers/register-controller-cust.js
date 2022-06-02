var Cryptr = require('cryptr');
var express=require("express");
var connection = require('./../config');
// cryptr = new Cryptr('myTotalySecretKey');
 
module.exports.register=function(req,res){
  var customer={
      "name":req.body.name,
      "address":req.body.address,
      "city":req.body.city,
      "state":req.body.state,
      "zip":req.body.zip,
      "email":req.body.email,
      "checkindate":req.body.checkindate,
      "checkoutdate":req.body.checkoutdate,
      "room":req.body.room
  
    }
    connection.query('INSERT INTO customer SET ?',customer, function (error, results, fields) {
      if (error) {
        res.json({
            status:false,
            message:'there are some error with query'
        })
      }else{
          res.json({
            status:true,
            data:results,
            message:'user registered sucessfully'
        })
      }
    });
}
