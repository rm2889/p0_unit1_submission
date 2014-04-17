// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Raghav Malik
//  2.


// 1. "YOU SIGNED... WHO?!"
var theRock = {
	name: "Dwayne Johnson",
	age: 41,
	quote: "Do you smell what the rock is cookin?"
}

var johnnyDrama = {
	name: "Johnny Chase",
	age: 37,
	quote: "My knees are perfect, my ankes are perfect, its my calves I can't live with bro!"
}


// 2. "Here they Come!"

var adamSandler = {
	name: "Adam Sandler",
	age: 47,
	quote:  "That's your home! Are you too good for your home?!"
}

var kristenBell = {
	name: "Kristen Bell",
	age: 33,
	quote: "Do you wanna build a snowman?"
}

var jimCarrey = {
	name: "Jim Carrey",
	age: 52,
	quote: "...So you're telling me there's a chance? YEAH!"
}

// 3. "TIME IS MONEY!"

//YOUR CODE HERE!

function Client(name, age, quote)
{
	this.name = name;
	this.age = age;
	this.quote = quote;
}

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
console.log(shooterMcGavin.constructor === Client);
console.log(shooterMcGavin.age === 48);
console.log(shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.");





// 4. "SHOW 'EM OFF!"

console.log(jimCarrey);


// ** BONUS **
