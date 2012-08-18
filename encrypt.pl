#!/usr/bin/perl -w
#A cryptography function, encrypts the information in a file and saves the random key and the new information into a new file
sub encryption{
	my($fh)=shift;
	open(NEWFILE, "<$fh") or die $!;
	my @info = <NEWFILE>;
	my $info = join(" ", @info);
	close(NEWFILE);
	my $cipher = random_value(length($info));
	open(KEY, ">key($fh)") or die $!;
	print KEY $cipher;
	close(KEY);
	my $encrypted = $info ^ $cipher;
	open(ENCRYPTED, ">encryptedfile($fh)") or die $!;
	print ENCRYPTED $encrypted;
	close(ENCRYPTED);
	return 1
}
sub random_value {
	my($length)=shift;
	my $num;
	for (1..$length){
		$num .= chr(rand 256)
	}
	return $num
}

encryption "@ARGV";
exit;
