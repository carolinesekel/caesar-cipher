#include <iostream>
#include <string>
#include <iterator>

using namespace std;

void encrypt(string input_string){
    cout << "Now encrypting " << input_string << "..." << endl;
    string alphabet = "abcdefghijklmnopqrstuvwxyz";
    //shift by 5
    string cipher = "fghijklmnopqrstuvwxyzabcde";
    string encrypted = "";
    for (string::iterator it = input_string.begin(); it != input_string.end(); ++it){
        int position = alphabet.find(*it);
        char new_char = cipher.at(position);
        encrypted += new_char;
    }
    cout << "Encrypted string: " << encrypted << endl;
}

int main(){
    cout << "What would you like to encrypt? ";
    string to_encrypt;
    cin >> to_encrypt;
    encrypt(to_encrypt);
    return 0;
}


