#!/usr/bin/perl -w
#A true function written in Perl
use strict;
use warnings;
foreach(@ARGV){
	if($_ =~ /--help/){
		print "This is a function that exits with a true value, written in Perl\n";
		exit 0
	} elsif ($_ =~ m/--version/){
		print "This is true.pl, version 1.0\n";
		exit 0
	} else {
		exit 0
	}
	exit 0
}
