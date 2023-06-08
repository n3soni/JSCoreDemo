'use strict';

// we can change definition of below function any time in JS file and it will reflect in code.
var addX = function(a, b) {
    if (isNaN(a) || isNaN(b)) {
      throw Error("Please enter valid numbers.");
    };
    return a + b; // try changing function definition
};
