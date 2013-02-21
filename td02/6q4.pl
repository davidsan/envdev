perl -nle 'BEGIN{$debut=shift @ARGV; $fin=shift @ARGV;} print if $. >= $debut and $. <= $fin;' 12 24 199
