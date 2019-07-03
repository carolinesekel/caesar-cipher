var alphabet = "abcdefghijklmnopqrstuvwxyz";
//shift by 5
var cipher = "fghijklmnopqrstuvwxyzabcde";

//input from command line
var prompt = require("prompt");
prompt.start();

console.log("What do you want to encrypt?");
prompt.get(["string"], function(err, res){
    console.log("Now encrypting ".concat(res.string, "..."));
    var encrypted = "";
    for (var i=0; i<res.string.length; i++){
        position = alphabet.indexOf(res.string[i]);
        //console.log(position);
        new_char = cipher[position];
        //console.log(new_char);
        encrypted += new_char;
        //console.log(encrypted)
    }
    console.log("Encrypted string: " + encrypted);
});

