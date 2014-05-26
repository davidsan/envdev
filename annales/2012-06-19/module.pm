package module;

use warnings;
use Exporter();
@ISA = qw(Exporter);

@EXPORT = qw(formatmultipart);
@EXPORT_OK = qw();


sub mymime{	
	$data = shift @ARGV;
	$str=pack ("u", $data);
	$str=~s/^.//;
	$str=~s/`/A/g;
	$str=~tr/ -_/A-Za-z0-9+/;
	return $str;
}
sub randstring{

	my $n=shift @_;
	@array=('a'..'z', 'A'..'Z', '0'..'9');
	my $str="";

	for (my $var = 0; $var < $n; $var++) {
		$r=int(rand(@array));
		$str.=$array[$r];
	}

	return $str;
}

sub formatmultipart{

	$fictext=shift @_;
	$ficencode=shift @_;

	open $fht, $fictext or die "can't open file";
	open $fhe, $ficencode or die "can't open file";
	while(<$fht>){
		$fictext_data.=$_;
	}
	while(<$fhe>){
		$ficencode_data.=$_;
	}
	$boundary=randstring 10;
	{
	
	
	print "MIME-Version: 1.0"."\n";
	print "Content-Type: multipart/mixed; boundary=".$boundary."\n";
	print ""."\n";
	print "This is a message with multiple parts in MIME format."."\n";
	print "--".$boundary."\n";
	print "Content-Type: text/plain"."\n";
	print ""."\n";
	print $fictext_data."\n";
	print "--".$boundary."\n";
	print "Content-Type: application/octet-stream"."\n";
	print "Content-Transfer-Encoding: base64"."\n";
	print $ficencode_data."\n";
	print "--".$boundary."\n";
}
}


1;