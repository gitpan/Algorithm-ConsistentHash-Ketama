use strict;
use Test::More;
use threads;
use_ok "Algorithm::ConsistentHash::Ketama";

my $x = Algorithm::ConsistentHash::Ketama->new; 
my @threads;
for (1..5) {
    push @threads, threads->create(sub{
        note( "spawned thread : " . threads->tid() );
    });
}

foreach my $thr (@threads) {
    note( "joining thread : " . $thr->tid );
    $thr->join;
}

ok(1);
done_testing();