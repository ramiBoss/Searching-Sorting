#!/usr/bin/perl

# Selection Sort program in perl

$count = 5;
@array = ();
print "Enter $count numbers:\n";

for my $i (1 .. $count){
	chomp($num = <STDIN>);
	push @array, $num;
}

print "You have entered: ";

for my $i (1 .. $count){
	print " $array[$i -1], ";
}

for($i = 0; $i < $count; $i++){
	$min_index = $i;
	for($j = $i+1; $j < $count; $j++){
		if($array[$j] < $array[$min_index]){ $min_index = $j;}	
	}
	($array[$i], $array[$min_index]) = ($array[$min_index], $array[$i]);
}

print "\nAfter Sorting:\n";
for my $i (1 .. $count){
	print " $array[$i -1], ";
}

