# Net::DomainTools::API - check module loading and create testing directory

use Test::More tests => 6;

BEGIN {
    use_ok('Net::DomainTools::API');
    use_ok('Net::DomainTools::API::NameSpinner');
    use_ok('Net::DomainTools::API::SearchEngine');
}

## calling new on this object should fail
my $o;
eval { $o = Net::DomainTools::API->new(); };
if ($@) {
    ok(1);
}
else {
    ok(0);
}

$o = Net::DomainTools::API::NameSpinner->new();
ok( $o, "NameSpinner instantiated" );

$o = Net::DomainTools::API::SearchEngine->new();
ok( $o, "SearchEngine instantiated" );

