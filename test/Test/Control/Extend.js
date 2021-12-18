"use strict";

exports.foldl = function(f) {
    return function(init) {
        return function(xs) {
            return xs.reduce(function(b, a) { return f(b)(a); }, init);
        };
    };
};
