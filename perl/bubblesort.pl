#!/usr/bin/perl

#Bubble Sort program in perl

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

for(my $i = 0; $i < $count ; $i++){
	for (my $j = $i+1; $j < $count; $j++){
		if($array[$i] > $array[$j]) {$temp = $array[$i]; $array[$i] = $array[$j]; $array[$j] = $temp; }
	}
}

print "\nAfter Sorting:\n";
for my $i (1 .. $count){
	print " $array[$i -1], ";
}

