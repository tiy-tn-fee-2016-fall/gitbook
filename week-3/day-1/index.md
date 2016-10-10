# Monday Oct 10

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

var z = 'false';

var a = (foo) => {
  if (foo) {
    // console.log('a works with ' + foo.toString());
    console.log(`a works with ${foo.toString()}`);
  }
}

var noexist;

if (x) {
  console.log(`x is truthy?`);
}

if (hi) {
  console.log(`hi is truthy?`);
}

if (noexist) {
  console.log(`noexist is truthy?`);
}

if (y) {
  console.log(`y is truthy?`);
}

if (z) {
  console.log(`z is truthy?`);
}

if (y(`10`)) {
  console.log(`y('10') is truthy?`);
} else {
  console.log('y returned something falsey!');
}

if (a()) {
  console.log(`a() is truthy?`);
}

if (a(null)) {
  console.log(`a(null) is truthy?`);
}

if (a(10)) {
  console.log(`a(10) is truthy?`);
}
```

| Truthy                 | Falsey         |
| :-------------         | :------------- |

https://dorey.github.io/JavaScript-Equality-Table/

### Value vs Reference

```js
// Variable Creation
var x;
// Variable Assignment
x = 10;
var y = x;
y = 12;

console.log(x); //
console.log(y); //

var z = {firstName: 'Bob'};
console.log(z.firstName); //

var a = z;
a.firstName = 'Tim';
console.log(a.firstName); //
a = {firstName: 'Jan'};

console.log(a.firstName); //
console.log(z.firstName); //

var b = [15, 25, 30];
var c = b;
c[1] = 100;

console.log(b); //
console.log(c); //

a = b;

console.log(x); //
console.log(y); //
console.log(z); //
console.log(a); //
console.log(b); //
console.log(c); //
```

> **PRO TIP** - If you see dot notation or bracket notation on the left hand side of an assignment, you are changing that actual object! If there is no dot or bracket notation, you will not have side-effects.

```js
function change(a, b) {
  a.lastName = 'Stark';
  b = 'Dragon';
}

var character = { firstName: 'Jon', lastName: 'Snow' };
var pet = 'Wolf';

change(character, pet);
console.log(character); //
console.log(pet); //
```

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

*

### Common Struggles

*

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
- What is Node.js
- Making tests pass

## Code

https://github.com/TIY-TN-FEE-2016-fall/lesson-03-01

## Homework
