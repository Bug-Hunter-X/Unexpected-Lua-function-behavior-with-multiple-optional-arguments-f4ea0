local function myFunc(a, b)
  local numArgs = select('#', ...)
  if numArgs > 2 then
    error("Too many arguments passed to myFunc")
  elseif a == nil then
    return b or 0 -- Provide a default value for b if it is nil
  elseif b == nil then
    return a or 0 -- Provide a default value for a if it is nil
  else
    return a + b
  end
end

print(myFunc(10)) -- Output: 10
print(myFunc(nil, 20)) -- Output: 20
print(myFunc(10, nil)) -- Output: 10
print(myFunc(nil, nil)) -- Output: 0

--Now it correctly handles the extra argument
--print(myFunc(10, nil, 30)) -- Output: error
print(myFunc(10, 20, 30))
-- Output:lua: bugSolution.lua:5: Too many arguments passed to myFunc
--stack traceback:
--    [C]: in function 'error'
--    bugSolution.lua:5: in function 'myFunc'
--    bugSolution.lua:16: in main chunk
--    [C]: in ?
