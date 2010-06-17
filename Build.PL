use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'GeNUScreen::Config',
    license             => 'perl',
    dist_author         => 'Mathias Weidner <mamawe@cpan.org>',
    dist_version_from   => 'lib/GeNUScreen/Config.pm',
    requires => {
	'Class::Std' => 0,
        'Test::More' => 0,
        'version'    => 0,
    },
    script_files	=> [ 'genuscreen-config' ],
    add_to_cleanup      => [ 'GeNUScreen-Config-*' ],
);

$builder->create_build_script();
