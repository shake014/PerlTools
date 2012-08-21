#!/usr/bin/perl -w
#  Copyright (c) 2012, Sammy Shaker, <shake014@umn.edu>
#
#  Permission to use, copy, modify, and/or distribute this software for any
#  purpose with or without fee is hereby granted, provided that the above
#  copyright notice and this permission notice appear in all copies.
#
#  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
#  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
#  SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
#  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
#  OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
#  CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
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
