module.exports = (data) => {

    return `
    <html>
        <head>
            <link rel='stylesheet' href='/styles.css'>
        </head>
        <body>
            <h1>Wisconsin Beers</h1>
            <section id='beers'>
                ${data.map((elem) => 
                    `<div class='beer-details'>
                        <img class='details-img' src='/${elem.img}'>
                        <div>
                            <span class='beer-name'><a href='/beers/${elem.beerid}'>${elem.beername}</a></span>
                            <span class='brand-name'>${elem.brandname}</span>
                            <span class='type' id='details-type'>${elem.type}</span>
                            
                            
                            
                        </div>
                        

                    </div>
                    
                    <div id='flavor-notes'>${elem.flavor_notes}</div>
                    <div class='abv'>${elem.abv}% ABV</div>`
                ).join('')}

            </section>
            
            <a href='/'>home</a>
        </body>
    </html>
    
    `
}