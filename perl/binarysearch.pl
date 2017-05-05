#!/usr/bin/perl

# Binary Search program in perl

@array  = (0,1,2,3,4,5,6,7,8,9);
print "Enter a number to search: ";
chomp($num = <STDIN>);

$start = 0;
$end = @array;

$flag = 0;

while($end > $start){
    $mid = int(($start+$end)/2);
    if($array[$mid] == $num){ $flag = 1; print "\n Number found at location:  $mid "; last; }
    elsif($num > $array[$mid]) { $start = $mid+1;}
    else { $end = $mid-1; }
}
if( $flag == 0){ print "\n Number not found"; }
