use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Wikibase::WQS::SPARQL;

# Test.
is($Wikibase::WQS::SPARQL::VERSION, 0.01, 'Version.');
