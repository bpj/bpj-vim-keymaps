#!/usr/bin/env perl
use 5.014;
use strict;
use warnings;
use utf8::all;

use List::MoreUtils qw[uniq];
use Algorithm::FastPermute qw[permute];
use Getopt::Long qw[GetOptions :config bundling no_ignore_case no_auto_abbrev];

my %opt = qw[ case 1 ];

GetOptions( \%opt, qw[ case|c! marks|m! ] )
    or die "Error getting options\n";

sub tc { ($_[0] // $_) =~ s/(\p{LC}+)/\u\L$1/gr }

my %seen;
while ( <> ) {
    print $_ and next if /^"/ or /^\s*$/;
    my @lines;
    if ( $opt{case} and /^\S*\p{LC}/ ) {
        @lines = uniq (lc, uc, tc);
    }
    @lines = ($_) unless @lines;
    if ( $opt{marks} and /^([\pP\pS]{2,})\pL/ ) {
        my $m = $1;
        my @marks = $m =~ /./g;
        my @perms;
        {
            local $" = q();
            permute { push @perms, "@marks" } @marks;
        }
        for my $line ( @lines ) {
            $line =~ s/^[\pP\pS]+//;
            for my $m ( @perms ) { print $m.$line unless $seen{$m.$line}++ }
        }
    }
    else { 
        for my $line ( @lines ) {
            print $line unless $seen{$line}++;
        }
    }
}


__END__
