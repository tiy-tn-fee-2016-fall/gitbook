# Thursday October 13

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned?

### Common Wins

* Feedback and Going Back to HW *3x*
* Maybe Figuring out Functions?
* `for`/`while` Practice
* Community (NashJs)!!!
* Function Arguments
* Sticking with it! *2x*
* Assignment!
* Flexbox
* Display

### Common Struggles

* Understanding the Assignments
* Lost in DOM Lecture *2x*
* Javascript is Rough
* Logic of Functions
* Function Arguments
* Need More Practice
* Catching Up

## Daily JS

#### Instructions

Given the code below, write code to make the `digitize` function work.
The function should perform the following:

* Given a non-negative integer, return an array / a list of the individual digits in order.

#### Methods to Look Up

* Number.prototype.toString()
* String.prototype.split

```js
function spaghetti(pasta, protein) {
  return pasta + " & sauce & " + protein;
}

const dinner = spaghetti("wheat pasta", "chicken");

function digitize(n) {
  const str = n.toString();
  const result = [];

  for (let i = 0; i < str.length; i++) {
    result.push(parseInt(str[i]));
    console.log('i: ', i, 'str[i]: ', str[i], result);
  }

  return result;
}

console.assert(digitize(123)[0] === 1); // Checks that the first item in an array returned by `digitize(123)` is a number 1
console.assert(digitize(8675309)[6] === 9); // Checks that the item in position 6 of an array returned by `digitize(8675309)` is a number 9
console.assert(digitize(332)[2] === 2); // Checks that the item in position 2 of an array returned by `digitize(332)` is a number 2

console.log('It\'s WORKING!!!'); // If this prints out then everything is working!
```

http://codepen.io/rtablada/pen/VKdgXZ?editors=0011

## Topics

* Reading in Info from the DOM
* Review Changing DOM in JS
* `classList`
* `style`

## Code

https://github.com/TIY-TN-FEE-2016-fall/lesson-03-03

## Homework
