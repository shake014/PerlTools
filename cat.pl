#!/usr/bin/perl -w
use strict;
use warnings;

sub print_file {
   my $files = shift;
   open FILE, $files;
   while (my $line = <FILE>){
     print $line;
   }
   print "\n";
}

sub cat {
  while (my $files = shift){
    print_file($files);
  }   
}

cat "@ARGV\n";
