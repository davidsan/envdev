perl -nle '$h[$_]++4; 
END { print $_,':';$tab[$_] foreach keys % tab }'
