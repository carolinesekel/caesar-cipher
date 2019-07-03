alphabet = "abcdefghijklmnopqrstuvwxyz"
#shift by 5
cipher = "fghijklmnopqrstuvwxyzabcde"

input_string = input("What would you like to encrypt? ")
print("Now encrypting ", input_string, "...")

encrypted = ""

for letter in input_string:
    position = alphabet.index(letter)
    new_char = cipher[position]
    encrypted += new_char

print("Encrypted string: ", encrypted)