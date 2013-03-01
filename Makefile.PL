use inc::Module::Install;

name 'Algorithm-ConsistentHash-Ketama';
all_from 'lib/Algorithm/ConsistentHash/Ketama.pm';
repository "git://github.com/lestrrat/Algorithm-ConsistentHash-Ketama.git";
homepage "https://github.com/lestrrat/Algorithm-ConsistentHash-Ketama";
bugtracker "https://github.com/lestrrat/Algorithm-ConsistentHash-Ketama/issues";

if (! cc_available()) {
    warn "no compiler available";
    exit 1;
}

test_requires 'Test::More', 0.84;
test_requires 'Test::Requires';
use_ppport;
cc_warnings;
cc_src_paths 'xs';

author_tests 'xt';

WriteAll;