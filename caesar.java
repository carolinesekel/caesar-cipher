import java.util.*;

String alphabet = "abcdefghijklmnopqrstuvwxyz";
String cipher = "fghijklmnopqrstuvwxyzabcde";

System.out.print("What do you want to encrypt? ");

Scanner scan = new Scanner(System.in);
String input_string = scan.nextLine();

System.out.println("Now encrypting " + input_string + "...")

String encrypted = "";

for (int i = 0; i < input_string.length(); i++){
    char c = input_string.charAt(i);
    int position = alphabet.indexOf(c);
    char new_char = cipher.charAt(position);
    encrypted += new_char;
}

System.out.println("Encrypted string: "  + encrypted);
