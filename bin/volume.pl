#!/usr/bin/perl -w

=head1 USING
/**
 *
 * The program deletes an unused volume with a hexadecimal name, which is massively formed by Prometheus, Grafana, Corda and other programs.
 *
 * when $remove = 0 - it is only printed
 * when $remove = 1 - they are deleted
 *
 */
=cut

use strict;
use Math::BigInt;
no warnings 'portable';

my $remove = 0;

open(DATA, "docker volume ls |") or die "Unable to launch docker!";
while (my $line = <DATA>) {
	chomp($line);
	my ($first, $second) = split(/\s+/, $line);
	if (&ishex($second)) {
		if ($remove) {
			system("docker volume rm $second");
		} else {
			print("$second\n");
		}
	}
}

sub ishex {
        my ($word) = @_;
	# print("$word\n");
	my $is = 0;
	if ($word =~ /^[[:xdigit:]]+\z/) {
		eval {
			Math::BigInt->new($word);
			$is = 1;
		};
	}
	return $is;
}
