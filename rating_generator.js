function random(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
  }


  function randomDate(start, end) {
    return new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
}

let string = '';

for(let i = 0; i < 200; i++){
    string += `INSERT INTO ratings VALUES(${i}, ${random(1, 7)}, ${random(1, 5)}, '${randomDate(new Date(2020, 0, 1), new Date())}');\n`;
}

console.log(string);