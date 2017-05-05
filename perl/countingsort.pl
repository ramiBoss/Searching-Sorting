#!/usr/bin/perl

# Counting Sort program in perl

@array = (1,4,1,2,7,5,2);
@arrayB = ();
@arrayC = ();
$len = 10;

$, = " ";
print "Main Array", @array, "\n";
for(my $i = 0; $i < $len; $i++){ $arrayB[$i] = 0; }
for(my $i = 0; $i < scalar @array; $i++){
    $arrayB[$array[$i]] = $arrayB[$array[$i]]+1;
}

print "Array B before intermediate addition ", @arrayB, "\n";

for(my $i = 1; $i < $len; $i++){
    $arrayB[$i] = $arrayB[$i]+$arrayB[$i-1];
}

print "Array B after intermediate addition ",@arrayB, "\n";
for(my $i = scalar @array; $i > 0; $i--){
    $arrayC[$arrayB[$array[$i]]] = $array[$i];
    $arrayB[$array[$i]] = $arrayB[$array[$i]]-1;    
}

print "Solution in Array C ",@arrayC, "\n";

