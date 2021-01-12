use strict;
use warnings;

use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;
use Wikibase::WQS::SPARQL;

# Test.
my $obj = Wikibase::WQS::SPARQL->new;
isa_ok($obj, 'Wikibase::WQS::SPARQL');

# Test.
eval {
	Wikibase::WQS::SPARQL->new(
		'lwp_user_agent' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'lwp_user_agent' must be a 'LWP::UserAgent' instance.\n",
	"Parameter 'lwp_user_agent' must be a 'LWP::UserAgent' instance.");
clean();
