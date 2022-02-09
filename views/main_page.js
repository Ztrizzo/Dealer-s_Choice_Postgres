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
                    `<div class='beer-entry'>
                        <img class='img' src='/${elem.img}'>
                        <div>
                            <div class='name-type'>
                                <span class='beer-name'><a href='/beers/${elem.beerid}'>${elem.beername}</a></span>
                                <span class='type'>${elem.type}</span>
                            </div>
                            <div class='abv-brand'>
                                <span class='abv'>${elem.abv}% ABV &middot;</span>
                                <span class='brand-name'>${elem.brandname}</span>
                            </div>
                        </div>
                    </div>`
                ).join('')}
            </section>
            
        </body>
    </html>
    
    `

}