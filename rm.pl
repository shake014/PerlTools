#!/usr/bin/perl -w
# A utility to remove files
use strict;
use warnings;
my $file;
foreach $file (@ARGV){
  if($file=~/--help/){
    print "This is a utility to remove files"
  } elsif($file=~/--version/){
    print "This is rm.pl, version 1.0.0"
  } else {
	unlink $file
  }
}
exit 0
