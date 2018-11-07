
const express = require('express');
const app = express();
const mysql = require('mysql');
const bodyParser = require('body-parser');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

// connection configurations
const db = mysql.createConnection({
    host: '192.168.0.9',
    user: 'root',
    password: 'qweasdrf',
    database: 'node_tasks'
});

// connect to database
db.connect();

// default route
app.get('/', function (req, res) {

	try {

	    return res.send({
	    	success: true,
	    	message: 'NodeJS Express API',
	    	data: null
	    });

    } catch (err) {

	    return res.send({
        	success: false,
        	message: err,
        	data: null
        });
	}
});

// Retrieve all todos
app.get('/todos', function (req, res) {

	try {

	    db.query('SELECT * FROM tasks', function (error, results, fields) {
	        if (error) throw error;
	        return res.send({
	        	success: true,
	        	message: 'Data retrieved successfully.',
	        	data: results
	        });
	    });

    } catch (err) {

	    return res.send({
        	success: false,
        	message: err,
        	data: null
        });
	}
});

// Retrieve todo with id
app.get('/todo/:id', function (req, res) {

	try {

	    let id = req.params.id;

	    if (!id) {
	    	throw 'Please provide task ID.';
	    }

	    db.query('SELECT * FROM tasks where id=?', id, function (error, results, fields) {

	        if (error) {
	        	throw error;
	        }

	        return res.send({
	        	success: true,
	        	message: 'Data retrieved successfully.',
	        	data: results[0]
	        });
	    });

	} catch (err) {

	    return res.send({
        	success: false,
        	message: err,
        	data: null
        });
	}
});

// port must be set to 8080 because incoming http requests are routed from port 80 to port 8080
app.listen(8080, function () {
    console.log('Node app is running on port 8080');
});