const database = require('./db/index.js');
const express = require('express');
const morgan = require('morgan');
const mainPage = require('./views/main_page.js')
const beerDetails = require('./views/beer_details.js');

const app = express();


const PORT = process.env.PORT || 3000;


app.use(morgan('dev'));
app.use(express.static(__dirname + "/public"));

app.get('/', async (req, res, next) => {
    try{
        const data = await database.query(`
            SELECT beers.name as beerName, brands.name as brandName, type, abv, flavor_notes, address, beers.id as beerid, img
            FROM beers
            JOIN brands ON brands.id = beers.brand_id;
        `)
        console.log(data.rows);
        res.send(mainPage(data.rows));
    }
    catch(error){
        next(error);
    }
    
})

app.get('/beers/:id', async (req, res, next) => {
    try{
        const data = await database.query(`
            SELECT beers.name as beerName, brands.name as brandName, type, abv, flavor_notes, address, beers.id as id, img
            FROM beers
            JOIN brands ON brands.id = beers.brand_id
            WHERE beers.id = ${req.params.id};
        `)

        console.log(data.rows);
        res.send(beerDetails(data.rows));
    }
    catch(error){
        next(error);
    }
})





app.listen(PORT, () => {
    console.log(`App listening in port: ${PORT}`)
})