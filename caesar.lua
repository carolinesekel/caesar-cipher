alphabet = "abcdefghijklmnopqrstuvwxyz"
--shift by 5
cipher = "fghijklmnopqrstuvwxyzabcde"

io.write("What would you lke to encrypt?\n")
input_string=io.read()
encrypted = ''
for c in input_string:gmatch"." do
    position = string.find(alphabet, c)
    new_char = cipher:sub(position,position)
    encrypted = encrypted .. new_char
end
print("Encrypted string: ")
print(encrypted)
