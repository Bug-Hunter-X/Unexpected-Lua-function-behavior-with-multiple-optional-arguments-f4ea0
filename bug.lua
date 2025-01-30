local function myFunc(a, b)
  if a == nil then
    return b
  elseif b == nil then
    return a
  else
    return a + b
end

print(myFunc(10)) -- Output: 10
print(myFunc(nil, 20)) -- Output: 20
print(myFunc(10, nil)) --Output: 10
print(myFunc(nil, nil)) --Output: nil

--Unexpected behavior
print(myFunc(10, nil, 30)) -- Output: 10  Expected Output: error or nil or something other than 10