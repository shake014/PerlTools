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
