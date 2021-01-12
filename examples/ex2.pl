#!/usr/bin/env perl

use strict;
use warnings;

use Wikibase::WQS::SPARQL;
use Wikibase::WQS::SPARQL::Query::Count;

if (@ARGV < 1) {
        print STDERR "Usage: $0 ccnb\n";
        exit 1;
}
my $ccnb = $ARGV[0];

my $q = Wikibase::WQS::SPARQL->new;
my $sparql = Wikibase::WQS::SPARQL::Query::Count->new->count_simple('P3184',
        $ccnb);
my $ret = $q->query_count($sparql);

# Print count.
print "Count: $ret\n";

# Output for 'cnb002826100':
# Count: 1

# Output for 'bad':
# Count: 0