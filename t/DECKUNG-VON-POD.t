#!perl
use strict;
use warnings;

use Test::More tests => 2;
eval "use Test::Pod::Coverage 0.08";
plan skip_all => "Test::Pod::Coverage 0.08 required for testing POD coverage"
    if $@;

pod_coverage_ok('Acme::LAUTER::DEUTSCHER');
pod_coverage_ok( 'PerlIO::via::LAUTER_DEUTSCHER',
    { trustme => [ qr{\A [A-Z]+ \Z}x, qr{\A unimport \Z}x ] } );
