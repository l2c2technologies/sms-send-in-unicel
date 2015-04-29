#!/usr/bin/perl 

# Compile-testing for SMS::Send::IN::Unicel

use strict;
BEGIN {
	$|  = 1;
	$^W = 1;
}

use Test::More tests => 4;

ok( $] >= 5.006, 'Perl version is 5.006 or newer' );

use_ok( 'SMS::Send' );
use_ok( 'SMS::Send::IN::Unicel' );

my @drivers = SMS::Send->installed_drivers;
is( scalar(grep { $_ eq 'IN::Unicel' } @drivers), 1, 'Found installed driver IN::Unicel' );

