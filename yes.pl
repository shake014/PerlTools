#!/usr/bin/perl -w
#A yes function, written in Perl
use strict;
use warnings;
foreach (@ARGV){
	if ($_=~m/--help/){
		print "This function repeats any command line arguments endlessly";
		exit
	} elsif ($_=~m/--version/){
		print "This is yes.pl, version 1.0\n";
		exit
	} else {
		while (1){
			print $_
		}
	}
}
