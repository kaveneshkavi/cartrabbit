var express=require("express");
var bodyParser=require('body-parser');
 
var connection = require('./config');
var app = express();
 
var authenticateController=require('./controllers/authenticate-controller');
var registerController=require('./controllers/register-controller');
var authenticateControllerAdmin=require('./controllers/authenticate-controller-admin');
var registerControllerAdmin=require('./controllers/register-controller-admin');
var registerControllercust=require('./controllers/register-controller-cust');
 
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/',express.static(__dirname +'/'));
app.get('/', function (req, res) {  
   res.sendFile( __dirname + "/" + "index.html" );  
})  
 
app.get('/admin.html', function (req, res) {  
   res.sendFile( __dirname + "/" + "admin.html" );  
})  
 
/* route to handle login and registration */
app.post('/api/register',registerController.register);
app.post('/api/authenticate',authenticateController.authenticate);

app.post('/api/register',registerControllerAdmin.register);
app.post('/api/authenticate',authenticateControllerAdmin.authenticate);

app.post('/api/register',registerControllercust.register);
 
console.log(authenticateController);
app.post('/controllers/register-controller', registerController.register);
app.post('/controllers/authenticate-controller', authenticateController.authenticate);

app.post('/controllers/register-controller-admin', registerControllerAdmin.register);
app.post('/controllers/authenticate-controller-admin', authenticateControllerAdmin.authenticate);

app.post('/controllers/register-controller-cust', registerControllercust.register);
app.listen(8012);
