package Eratosthene;
use Moose;
has 'liste_a_traiter' => (
	isa => 'ArrayRef[Int]', 
	is => 'rw',
	required => 1
	);
has 'premier' => (
	isa => 'ArrayRef[Int]',
	is => 'rw'
	);

sub crible{
	my $self=shift;
	foreach my $n (0..@{$self->{liste_a_traiter}}-1){

		if (exists $self->{liste_a_traiter}[$n]){	
		push @{$self->{premier}}, $n;	
			foreach my $i (($n+1)..@{$self->{liste_a_traiter}}){
				if (exists $self->{liste_a_traiter}[$i]){	
					delete $self->{liste_a_traiter}[$i] 
					if $self->{liste_a_traiter}[$i] % 
					$self->{liste_a_traiter}[$n]==0;
				}
			}
		}
	}
	return $self->{liste_a_traiter};
}
1;