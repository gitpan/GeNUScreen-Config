use Test::More tests => 4;

my @scriptcall = qw(perl -Iblib/lib blib/script/genuscreen-config);

# first check whether script with option -help or -man runs
#
is(system(@scriptcall, '-help'),0, "run with -help");
is(system(@scriptcall, '-man'),0, "run with -man");

my ($pipe,@out,@args);

# this configuration should have 324 lines if printed
#
@args = qw(-config t/data/config.hdf print);
open $pipe, '-|', @scriptcall, @args;
@out = <$pipe>;
close $pipe;
is(scalar(@out),324,"number of config lines printed");

# those configurations should be equal
#
@args = qw(-config t/data/config.hdf diff t/data/example.cfg);
open $pipe, '-|', @scriptcall, @args;
@out = <$pipe>;
close $pipe;
like($out[0],qr/configurations are equal/,"compare configs");
