#!/usr/bin/perl -w

# Linear search of an array

# Note that if you later on want to search for something from a
# list of values, you shouldn't have used an array in the first
# place

# Generating 100 integers

$NUM = 200;
$MAXINT = 5000;

srand();

print "Numbers Generated:\n(";
for $i (1 .. $NUM){
	push @array, sprintf("%d", rand(1) * $MAXINT);
	print $array[$i-1];
	print ", " unless ($i == $NUM);	  
}

print ")\n\n";

print "Please enter the number to search for >>";
chomp($toSearch = <STDIN>);

# Linear search here

$counter = 0; $hit = 0;
foreach $num (@array) {
	$counter++;
	if($num == $toSearch){
		print "\"$toSearch\" found at subscript ", $counter -1, "\n";
		$hit = 1;
		last;
	}
}
if ($hit == 0){ print "\"$toSearch\" not found in array.\n"; }
print "Number of comparisons: $counter/", scalar(@array), "\n";
