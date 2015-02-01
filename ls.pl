#!/usr/bin/perl -w

use strict;
use warnings;

my $currentdirectory = cwd();

opendir(DIR, $currentdirectory) or die $!;

while(my $file = readdir(DIR)){
    print "$file\n";
}

closedir(DIR);
exit 1;
