# Monday October 3

## Daily JS

String Concatenation & ES6 Strings

```js
var x = 2;
var y = 3;
var z = 'hello';
var a = 'world';
var b = '2';
var c = `${a} foo${ b }`;
var d = `foo`;
var e = `${x} + ${y} = ${x + y}`;
var f = x + ' + ' + y + ' = ' + (x + y);
var g = "${x + y}";

console.log(x + y); // 5
console.log(z + a); // "helloworld"
console.log(z + ' ' + a); // "hello world"
console.log(c); // "world foo2"
console.log(d); // "foo"
console.log(e); // "2 + 3 = 5"
console.log(f); // "2 + 3 = 5"
console.log(g); // "${x + y}"
console.log(x + z); // "2hello"
console.log(x + b); // "22"
console.log(x + Math.parseInt(b)); // 4
```

## Lab

* *2PM-2:30PM* Call
* *4PM-4:30PM* Call

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Catching Up on HW *x2*
* Grouping Helps *x2*
* "Keeping Up" *x2*
* Making Progress
* Taking Breaks
* New Week

### Common Struggles

* Making Code that "FEELS GOOD"
* Keeping Up with Missed Days
* Screen resizing *x3*
* Display Flex *x2*
* Resizing Images
* Display Inline
* Feel slow
* [Monday](https://cdn.meme.am/instances/64509792.jpg) *x2*

## Topics

* Time and Stress Management
  - Seat Switching
* Background of Build Tools and Preprocessors
  * Build Tools
    - What are they?
    - Why do we use them?
    - What are we using?
      * Why that one?
  * Preprocessors
    - What are they?
    - Why do we use them?
    - What are we using?
      * Why that one?
* Scaffolding with Yeoman and SASS Broccoli
  - `npm install -g yo ember-cli generator-sass-broccoli`
  - `yo sass-broccoli`
  - Run Local Server - `npm start`
* SASS Lint
  - `apm install linter-sass-lint`
* SASS Variables
* SASS Nesting
  - [BEM Naming Conventions](./bem.html)
* SASS Imports
  - [Organizing Code](./organizing.html)
* Flex Practicee

## Inspiration

### Twitter Dashboard

![Twitter Dashboard](./twitter.png)

## Exercise & Lesson Code

https://github.com/tiy-tn-fee-2016-summer/lesson-02-01

## Homework
