use Test::More tests => 1;
use Readonly;

Readonly::Array our @MODULES => qw(
	DateTime::TimeZone::Catalog
	DateTime::TimeZone::Floating
	DateTime::TimeZone::Local;
	DateTime::TimeZone::OffsetOnly
	DateTime::TimeZone::OlsonDB::Change
	DateTime::TimeZone::UTC
	Module::Runtime
	Params::ValidationCompiler
	Specio::Library::Builtins
	Specio::Library::String
	Try::Tiny
);

foreach my $module (@MODULES) {
	eval "require $module";
	diag("Testing $module ".${"${module}::VERSION"});
}
ok(1);
