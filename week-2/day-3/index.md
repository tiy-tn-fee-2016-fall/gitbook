# Wednesday Octover 5

## Daily JS * 2

### Function Arguments

When looking at variables or arguments inside of functions, if they are created in the function itself just rename it `functionName_variableName` so that it is clear that these variables are DIFFERENT than variables that exist outside of that function.


```js
var x = 2;

var y = function(foo) {
  return foo;
};

function z(foo) {
  return foo + x;
}

/* Fat arrow same as
var a = function(x = 9, y = 10) {
  return x * y;
};
 */
var a = (x = 9, y = 10, z = 2) => {
  return x * y;
};

var b = (cb, value) => {
  return cb(value + 2);
};

console.log(y()); // undefined
console.log(y(12)); // 12
console.log(y('hello')); // "hello"
console.log(foo); // undefined (or this may throw an error)
console.log(y(x)); // 2
console.log(z('Five')); // "Five2"
console.log(z(x)); // 4
console.log(a(15, 2)); // 30
console.log(a(0, 15, 2)); // 0
console.log(a(20, 15, 40, 2)); // 300
console.log(x); // 2
console.log(a()); // 90
console.log(a(1)); // 10
console.log(a(2)); // 10
console.log(a(41)); // 410
console.log(a(-10)); // -100
console.log(b(y, x)); // 4
console.log(b(a, 10)); // 120
```

## Interruptions

* Meeting 1-1:45PM

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

### Common Wins

* Monday's HW is coming into focus *x3*
* Keeping up
* Sleep
* Grids

### Common Struggles

* Hover *x3*
* Terminal
* Flexbox
* Grids

## Topics

* Focus and Time Management
  - [Tab Wrangler](https://chrome.google.com/webstore/detail/tab-wrangler/egnjhciaieeiiohknchakcodbpgjnchh?hl=en)
  - [Paradox of Choice](https://www.ted.com/talks/barry_schwartz_on_the_paradox_of_choice?language=en)
  - [Music Playlists](../../resources/playlists.html)
* [Selector Specificity](specificity.html)
* [BEM](bem.html)
* Refactoring - Scott Pilgrim ଘ(੭*ˊᵕˋ)੭* ̀ˋ ɪɴᴛᴇʀɴᴇᴛs
* [Layout Planning & Components](components.html)
* [Semantic Markup](semantic-markup.html)

## Inspiration

### [Initial Site](http://pricing-example.surge.sh)

### Mockups

* Desktop

![Desktop](https://github.com/theironyard-frontend-nashville/assignments/blob/cohort2/week02/wed/breakpoint4.png?raw=true)

* Phone

![Phone](https://github.com/theironyard-frontend-nashville/assignments/blob/cohort2/week02/wed/breakpoint1.png?raw=true)


## Exercise & Lesson Code

https://github.com/tiy-tn-fee-2016-summer/lesson-02-03

## Lab

## Homework

Tonight work on T-Shirts and cleaning up other past assignments.
Also, watch [this video](https://www.youtube.com/watch?v=ofSnkJ9tPPM&index=4&list=PLfWvsMtBxHo1WqPrBwxq3zc2RDo5HkYwy) and a small post on https://gist.github.com.
For the file name call it `blog.md` and if you know Markdown, you can use that for fomatting.
When you're done, slack me the url of your gist after clicking on "Create Public Gist".
