--print("Hello World!")
alphabet = "abcdefghijklmnopqrstuvwxyz"
--shift by 5
cipher = "fghijklmnopqrstuvwxyzabcde"

io.write("What would you lke to encrypt?\n")
input_string=io.read()
encrypted = ''
for c in input_string:gmatch"." do
    --print(c)
    position = string.find(alphabet, c)
    --print(position)
    new_char = cipher:sub(position,position)
    --print(new_char)
    encrypted = encrypted .. new_char
end
print("Encrypted string: ")
print(encrypted)
