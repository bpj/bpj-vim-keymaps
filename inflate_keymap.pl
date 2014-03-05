#!/usr/bin/env perl
use 5.014;
use strict;
use warnings qw[ FATAL all ];
no warnings qw[ uninitialized numeric ];
use utf8::all;

use List::MoreUtils qw[uniq];
use Algorithm::FastPermute qw[permute];
use Text::Tabs;
use Getopt::Long qw[GetOptions :config bundling no_ignore_case no_auto_abbrev];
use Unicode::Casing uc => \&my_uc, ucfirst => \&my_ucfirst;

$tabstop = 16;

my(%uc,%lc, %kp); # upper/lower case, keypad
BEGIN {
    %uc= qw[ ß ẞ i I ı I ];
    %lc = qw[ İ i I i ẞ ß ];
    %kp = qw[ + <kPlus> - <kMinus> * <kMultiply> / <kDivide> ];
}

my %opt = qw[ case 1 marks 0 ];

GetOptions( \%opt, qw[ case|c! marks|m! keypad|k! exclude|e=s ], 
    'tabstop|t=i' => \$tabstop,
    'i!' => sub { @uc{qw/i ı/} = qw[ İ I ]; %lc = reverse %uc; } )
    or die "Error getting options\n";

sub my_uc { my $str = shift; $str =~ s/([ßiı])/$uc{$1}/g; return uc $str; }
sub my_ucfirst { my $str = shift; $str =~ s/\A([ßiı])/$uc{$1}/g; return ucfirst $str; }
sub my_lc { my $str = shift; $str =~ s/([ẞİI])/$lc{$1}/g; return lc $str; }
sub my_lcfirst { my $str = shift; $str =~ s/\A([ẞİI])/$lc{$1}/g; return lcfirst $str; }
sub tc { ($_[0] // $_) =~ s/(\p{LC}+)/\u\L$1/gr }

my $exclude = $opt{exclude} ? qr/$opt{exclude}/ : undef;

my %seen;
ENTRY:
while ( <> ) {
    chomp;
    say $_ and next ENTRY if 1 .. /loadkeymap/;
    say $_ and next if /^"/ or /^\s*$/;
    # my $full_line = $_;
    my($key,$char,$comment) = split /\s+/, $_, 3;
    my $name = charnames::viacode(ord $char);
    # $comment = q{} if $comment =~ /\Q$name/;
    $_ = $key."\t".$char;
    my @lines;
    if ( $opt{case} and /^\S*\p{LC}/ ) {
        @lines = uniq (lc, uc, tc);
    }
    @lines = ($_) unless @lines;
    if ( $opt{marks} and /^([\pP\pS]{2,})\pL/ ) {
        my $m = $1 =~ s/\\(["\\])/$1/gr;
        my @marks = $m =~ /./g;
        my @perms;
        {
            local $" = q();
            permute { push @perms, "@marks" =~ s/(["\\])/\\$1/gr } @marks;
        }
        my @perm_lines;
        for my $line ( @lines ) {
            $line =~ s/^[\pP\pS]+//;
            push @perm_lines, map { $_.$line } @perms;
        }
        @lines = @perm_lines;
    }
    if ( $opt{keypad} and grep { m{[-+*/]} } @lines ) {
        push @lines, map { s{\A(\S+)}{$1 =~ s!([-+*/])!$kp{$1}!gr}er } @lines;
    }
    @lines = grep { !$seen{$_}++ } @lines;
    if ( $exclude ) {
        @lines = grep { !/$exclude/ } @lines;
    }
    next ENTRY unless @lines;
    $lines[0] .= qq{\t}.$comment if $comment;
    # $lines[0] .= qq{\t" }.$name;
    say $_ for expand @lines;
}


__END__
