#!/usr/bin/perl -w
#Checks the checksum value of a file or computes it
use Digest::MD5 qw(md5);
$fh = "$ARGV[1]";
if(-e cksum($fh)){
	open(CHECK, "<$fh") or die $!;
	$m = <CHECK>;
	close(CHECK);
	$string = substr(md5($m), 0, 4 );
	$md5_new = unpack('L', $string);
	open(CKS, "<cksum($fh)") or die $!;
	$md5_orig = <CKS>;
	close(CKS)
	if ($md5_new == $md5_orig){
		print "This file has been changed";
		open(CKS, ">cksum($fh)") or die $!;
		print CKS $md5_new;
		close(CKS);
		exit 0
	} else {
		print "This file has not been changed";
		exit 0
	}
} else {
	