const express = require("express");
const bp = require("body-parser");
const cors = require("cors");
const mysql = require("mysql");

const app = express();

app.use(cors());
app.use(bp.json());

// MySQL Database Connection

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'root',
    database : 'angulartest',
    port     : 3306
});

// Check MySQL Database Connection
connection.connect(err=>{
    if (err) {console.log(err,'Database Error');}
    console.log('Database Connected!');
});

app.listen(3000,() => (
    console.log("Server Running...")
));

//Get all data
app.get('/testdata/all/:column/:order',(req, res)=>{
    let column = req.params.column;
    let order = req.params.order;
    let query = `SELECT * FROM testdata ORDER BY ${column} ${order}`;
    connection.query(query,(err, result)=>{
        if(err){console.log(err,'errs');}
        if(result.length>0)
        {
            res.send({
                message: 'GET All Data',
                data: result
            });
        }
        else{
            res.send({
                message:'Data Not Found!',
                data:''
            });
        }
    })
});

// Insert Data
app.post('/testdata', (req,res)=>{
    console.log(req.body, 'Insert Data');
    
    let itemName = req.body.itemName;
    let description = req.body.description;
    let category = req.body.category;
    let subcategory = req.body.subcategory;
    let price = req.body.price;
    let lastUpdated = req.body.lastUpdated; 
    
    let queryInsert = `insert into testdata(itemName, description, category, subcategory, price, lastUpdated)
                 values('${itemName}','${description}','${category}','${subcategory}','${price}','${lastUpdated}')`;
    
    connection.query(queryInsert,(err,result)=>{
        if(err){console.log(err);}

        if(result.length = 0){
            res.send({
                data: res,
                message: 'Inserted Data'
            });
        }
        else{
            res.send({
                message:'There was an error!'
            });
        }
    });
});

// Update Data
app.put('/testdata/:id', (req,res)=>{
    console.log(req.body, 'Update Data');

    let id = req.params.id;
    let itemName = req.body.itemName;
    let description = req.body.description;
    let category = req.body.category;
    let subcategory = req.body.subcategory;
    let price = req.body.price;
    let lastUpdated = req.body.lastUpdated; 

    let query = `update testdata set itemName = '${itemName}', description = '${description}',  
                category = '${category}', subcategory = '${subcategory}', price = '${price}', 
                lastUpdated = '${lastUpdated}'
                where id = '${id}'`;
    
    connection.query(query,(err,result)=>{
        if(err){console.log(err)};

        res.send({
            message: 'Data Updated!'
        });
    });
});

// Delete Data
app.delete(`/testdata/:id`,(req,res)=>{
    console.log(req.body, 'Delete Data');
    let id = req.params.id;
    let query = `DELETE FROM testdata WHERE id = '${id}'`;

    connection.query(query,(err, result)=>{
        if(err) {console.log(err);}

        res.send({
            message:'Deleted Successfully'
        })
    });
});