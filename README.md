# Lua Function with Unexpected Behavior
This repository demonstrates an unexpected behavior in a Lua function with multiple optional arguments.  The function `myFunc` is designed to handle cases where either `a` or `b` or both are `nil`. However, when more arguments than expected are provided, it behaves unexpectedly by simply ignoring the extra arguments, and returning the value of 'a' if it is not nil, even if 'b' is not nil.

## Bug Report
The function does not properly handle extra arguments, leading to unexpected results. The expected behavior would be an error, a `nil` return, or a different more logical output when more arguments are passed than anticipated.

## Solution
The solution involves explicitly checking the number of arguments passed to the function using `select('#', ...)` and raising an error if the number of arguments exceeds the expected number.  The solution also shows how to use a default value for optional parameters. 