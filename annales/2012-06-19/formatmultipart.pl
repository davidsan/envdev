#! /usr/bin/perl -l

$fictext=shift @ARGV;
$ficencode=shift @ARGV;

open $fht, $fictext or die "can't open file";
open $fhe, $ficencode or die "can't open file";
while(<$fht>){
	$fictext_data.=$_;
}
while(<$fhe>){
	$ficencode_data.=$_;
}
$boundary="";

my $n=shift @ARGV;
@array=('a'..'z', 'A'..'Z', '0'..'9');


for (my $var = 0; $var < $n; $var++) {
	$r=int(rand(@array));
	$boundary.=$array[$r];
}

print "MIME-Version: 1.0";
print "Content-Type: multipart/mixed; boundary=".$boundary;
print "";
print "This is a message with multiple parts in MIME format.";
print "--".$boundary;
print "Content-Type: text/plain";
print "";
print $fictext_data;
print "--".$boundary;
print "Content-Type: application/octet-stream";
print "Content-Transfer-Encoding: base64";
print $ficencode_data;
print "--".$boundary;
