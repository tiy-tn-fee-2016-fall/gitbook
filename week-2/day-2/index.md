# Tuesday March 8

## Daily JS

### Functions and Fat Arrow Syntax

```js
var x = function() {
  console.log('hello');
  return 'Returned from x';
};

function y() {
  console.log('world');
}

var z = () => {
  console.log('yup');
};

var a = () => {
  return 'no';
};

var b;

var num = 2;
var doubleNum = () => 2 * num;
// var doubleNum = () => {
//   return 2 * num;
// };

console.log(b); // undefined
console.log(x); // FUNCTION
x(); // "hello"
console.log(x()); // "hello" // "Returned from x"
y(); // "world"
console.log(y()); // "world" // undefined
console.log(z); // FUNCTION
console.log(z()); // "yup" // undefined
console.log(a()); // "no"
console.log(doubleNum()); // 4
```

## Interruptions

* Meeting 2PM

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Some less stress and better routine *x3*
* Starting to get concepts
* HW Progress *2*
* Practice

### Common Struggles

* Width and Calc
* Grouping HTML
* Workflow *x3*
* Catching Up
* Balance
* Flexbox

## Topics

* Resources
* [Media Queries](https://online.theironyard.com/paths/379/units/2230/lessons/8599)
* [Pseudo Selectors & Elements](https://online.theironyard.com/paths/379/units/2230/lessons/8600)
  - CSS `content`

## Inspiration

* Twitter Again!!!
* Mobile Friendly Menus

## Exercise & Lesson Code

https://github.com/tiy-tn-fee-2016-summer/lesson-02-01/tree/tuesday

## Lab

## Homework

https://online.theironyard.com/paths/379/units/2144/assignments/4948
