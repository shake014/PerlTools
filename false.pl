#!/usr/bin/perl -w
#A false function, written in Perl
use strict;
use warnings;
foreach(@ARGV){
	if ($_ =~ m/help/){
		print "This is a utility written in Perl to return a false (ie, nonzero) value"
	} elsif ($_ =~ m/version/){
		print "This is false.pl, version 1.0"
	} else {
		exit 1
	}
	exit 1
}
