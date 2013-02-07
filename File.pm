#!/usr/bin/perl
package Aggregate

use warnings;
use strict;

use YAML;

my $config = YAML::LoadFile('../../config/config.yaml');


print "Hello World!\n";

sub output{
	my (@file) = @_;
	
	open (OUT, ">aggregate.csv") or die "$!";
	print OUT @file;
	
	close (OUT);
}

sub input{
	my $filename = 'test.csv';
	open (FILE, $filename) or die "$!";
	while (my @line = <FILE>){
	}
	close (FILE);
	
	return @line;
}

1;