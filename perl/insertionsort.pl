#!/usr/bin/perl

# Insertion Sorting program in perl

$count = 5;
@array = ();

print "Enter $count numbers:\n";
for my $i (1 .. $count ){
    chomp($num = <STDIN>);
    push @array, $num;    
}
print "You have entered: ";
for my $i (1 .. $count){
    print " $array[$i-1], ";
}
for(my $i = 1;$i < $count; $i++){
    $num = $array[$i];
    $j = $i-1;
    while($j >= 0 && $array[$j] > $num)
    { ($array[$j], $array[$j+1]) = ($array[$j+1], $array[$j]); $j--;}
    $array[$j+1] = $num;
}

print "\nArray after sorting: \n";
for my $i (1 .. $count){
    print " $array[$i-1], ";
}
