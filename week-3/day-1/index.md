# Monday Oct 10

<iframe width="560" height="315" src="https://www.youtube.com/embed/8tYXfssLOSM" frameborder="0" allowfullscreen></iframe>

![Spooky](http://i.makeagif.com/media/3-07-2015/AZavQz.gif)

## Interruptions & Events

- 1:30PM Guest Lecture!

## Daily JS

### Logic and "Truthiness"

```js
var hi = false;

var x = 20;

var y = function(wat) {
  console.log(wat);

  return wat === 10;
};

function otherFn() {
  return false;
}

var z = 'false';

var a = (foo) => {
  if (foo) {
    // console.log('a works with ' + foo.toString());
    console.log(`a works with ${foo.toString()}`);
  }
}

var noexist;

if (hi) { // Skip over this block of code because hi is false
  console.log(`hi is truthy?`);
}

if (x == 20) {
  console.log(`x is truthy?`); // "x is truthy"
}

if (x) {
  console.log(`x is truthy?`); // "x is truthy"
}

if (1) {
  console.log(`1 is truthy?`); // "1 is truthy"
}

if (0) { // 0 is considered "falsey"
  console.log(`0 is truthy?`);
}

if (-1) {
  console.log(`-1 is truthy?`); // "-1 is truthy"
}

if (noexist) { // Undefined is "falsey"
  console.log(`noexist is truthy?`);
}

if (otherFn) {
  console.log(`otherFn is truthy?`); // "otherFn is truthy?"
}

if (y) {
  console.log(`y is truthy?`); // "y is truthy?"
}

if (z) {
  console.log(`z is truthy?`); // "z is truthy?"
}

if ("some long string") {
  console.log(`"some long string" is truthy?`); // "\"some long string\" is truthy?"
}

if (" ") {
  console.log(`" " is truthy`); // "\" \" is truthy"
}

if ("") { // Empty strings are falsey!!!
  console.log(`"" is truthy`);
}

if (y(`10`)) { // Logs "10" within the function y // Skips the if statement because y('10') returned false
  console.log(`y('10') is truthy?`);
} else {
  console.log('y returned something falsey!'); // "y returned something falsey!"
}

if (a()) { // a() returns undefined
  console.log(`a() is truthy?`);
}

if (a(null)) { // a(null) returns undefined
  console.log(`a(null) is truthy?`);
}

if (a(10)) { // "a works with 10" logged within a, but return undefined
  console.log(`a(10) is truthy?`);
}
```

| Truthy                | Falsey    |
|:----------------------|:----------|
| true                  | false     |
| All numbers not 0     | 0         |
| All function VALUES   | undefined |
| All non-empty strings | ""        |
|                       | null      |

https://dorey.github.io/JavaScript-Equality-Table/

### Value vs Reference

```js
// Variable Creation
var x;
// Variable Assignment
x = 10;
var y = x;
y = 12;

console.log(x); // 10
console.log(y); // 12

var z = {firstName: 'Bob'};
console.log(z.firstName); // "Bob"

var a = z;
a.firstName = 'Tim';
console.log(a.firstName); // "Tim"
a = {firstName: 'Jan'};

console.log(a.firstName); // "Jan"
console.log(z.firstName); // "Tim"
console.log(z['firstName']); // "Tim"

var b = [15, 25, 30];
console.log(b[0]); // 15
var c = b;
c[1] = 100;

console.log(b); // [15, 100, 30]
console.log(c); // [15, 100, 30]

a = b;

console.log(x); // 10
console.log(y); // 12
console.log(z); // { firstName: "Tim" }
console.log(a); // [15, 100, 30]
console.log(b); // [15, 100, 30]
console.log(c); // [15, 100, 30]
```

**PRO TIP** - If you see dot notation or bracket notation on the left hand side of an assignment, you are changing that actual object! If there is no dot or bracket notation, you will _usually_ not have side-effects.

```js
var order1 = "Two tacos";
order1 = "Two tacos and salsa";
order2 = order1;

order1 = "Burrito";
order2;

var objectOrder = {
  tacos: 2,
};
var myOrder = objectOrder;
objectOrder.salsa = true;

objectOrder.salsa = false;
objectOrder.burrito = 1;

console.log(myOrder); // { tacos: 2, salsa: false, burrito: 1 }
```

```js
var character = { firstName: 'Jon', lastName: 'Snow' };
var pet = 'Wolf';

function change(a, b) {
  a.lastName = 'Stark';
  b = 'Dragon';
}

change(character, pet, "twenty two");
console.log(character); // { firstName: 'Jon', lastName: 'Stark' };
console.log(pet); // "Wolf"
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Flexbox is clicking *2x*
* Comfort Writing HTML
* Transform Translate
* Position Absolute
* Rock Solid Notes
* HW Progress *3x*
* Grids *2x*

### Common Struggles

* Full width images in "cards"
* Resizing and Responsive *2x*
* CSS is Harder than HTML
* Javascript *2x*
* Finer Detail
* Sick

## Topics

- Javascript Syntax Vocab
  * Variables
  * Maths
  * Strings
  * Arrays
  * Objects
  * Functions
  * `if` & `else`
  * `while` loop
  * `for` loop
- `import`/`export default` Statements
- Making tests pass

```npm install -g generator-qunit-broccoli```

## Code

https://github.com/TIY-TN-FEE-2016-fall/lesson-03-01

## Homework
