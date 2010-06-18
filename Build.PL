use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    add_to_cleanup      => [ 'GeNUScreen-Config-*' ],
    create_makefile_pl	=> 'traditional',
    dist_abstract	=> 'Work with config files for GeNUScreen firewalls',
    dist_author         => 'Mathias Weidner <mamawe@cpan.org>',
    dist_version_from   => 'lib/GeNUScreen/Config.pm',
    license             => 'perl',
    module_name         => 'GeNUScreen::Config',
    requires => {
	'Class::Std' => 0,
        'Test::More' => 0,
        'version'    => 0,
    },
    script_files	=> [ 'genuscreen-config' ],
);

$builder->create_build_script();
