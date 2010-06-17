use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'GeNUScreen::Config',
    AUTHOR              => 'Mathias Weidner <mamawe@cpan.org>',
    VERSION_FROM        => 'lib/GeNUScreen/Config.pm',
    ABSTRACT_FROM       => 'lib/GeNUScreen/Config.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'GeNUScreen-Config-*' },
);
