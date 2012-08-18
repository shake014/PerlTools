#!/usr/bin/perl -w
print "Enter the file needing decryption:\n";
chomp($fh = <STDIN>);
open(ONE, "<key($fh)") or die $!;
@m = <ONE>;
$m = join(" ", @m);
close(ONE);
open(ENC, "<encryptedfile($fh)") or die $!;
$cipher = <ENC>;
close(ENC);
$restored = $cipher ^ $m;
print $restored;
