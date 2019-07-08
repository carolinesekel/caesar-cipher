#!usr/bin/perl
use warnings;
use strict;

print "What do you want to encrypt? ";
my $inputString=<STDIN>;
$inputString = substr($inputString, 0, -1);
print "Now encrypting ${inputString}...\n";

my $alphabet = "abcdefghijklmnopqrstuvwxyz";
my $cipher = "fghijklmnopqrstuvwxyzabcde";

my $encrypted = "";

for my $c (split //, $inputString) {
    my $position = index($alphabet,$c);
    my $newChar = substr($cipher, $position, 1);
    $encrypted = $encrypted . $newChar;

}
print "Encrypted string: $encrypted\n";
