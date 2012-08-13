#!/usr/bin/perl -w
# Take in files as command line arguments and return contents
use strict;
use warnings;
#Open named files and return contents line by line
sub cat {
  while (my $files = shift){
      open FILE, $files;
          while (my $line = <FILE>){
              print $line;
          }
          print "\n";
  }
}

#Function call references command line arguments
cat "@ARGV\n";
exit;