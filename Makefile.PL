#!perl

use 5.010000;

use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::Spec ();

my %params = (
  NAME         => 'Task::BeLike::JMATES',
  ABSTRACT     => 'modules used by JMATES (testing needs)',
  VERSION_FROM => 'lib/Task/BeLike/JMATES.pm',
  PREREQ_PM    => {
    'App::MusicTools'             => 0,    # pulls in my other music mods*
    'CPAN::Uploader'              => 0,
    'Config::OpenSSH::Authkey'    => 0,
    'File::AtomicWrite'           => 0,
    'File::Cmp'                   => 0,
    'LWP::UserAgent'              => 0,
    'Math::SlideRule'             => 0,
    'Module::Starter'             => 0,
    'Module::Starter::XSimple'    => 0,
    'Module::Signature'           => 0,    # signage
    'Music::NeoRiemannianTonnetz' => 0,    # *except when it doesn't
    'Music::PitchNum'             => 0,    #    "     "   "    "
    'Term::CallEditor'            => 0,
    'Term::ReadLine::Gnu'         => 0,    # history in cpan \o/
    'Test::CheckManifest'         => 0,    # testing needs ...
    'Test::Differences'           => 0,
    'Test::Pod'                   => 0,
    'Test::Pod::Coverage'         => 0,
  },
  ( $] >= 5.005
    ? ( AUTHOR => 'Jeremy Mates <jmates@cpan.org>' )
    : ()
  ),
);

# TODO probably also exclude 64-bit Windows, figure out what that looks like
# and then also update Unix::Sysexits Makefile.PL
if ( $^O !~ m/MSWin32/ ) {
  $params{PREREQ_PM}->{'Unix::Sysexits'} = 0;
}

if ( $ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/ and $ExtUtils::MakeMaker::VERSION > 6.30 ) {
  $params{LICENSE} = 'perl';
}

if ( $ExtUtils::MakeMaker::VERSION ge '6.46' ) {
  $params{META_MERGE} = {
    resources => {
      homepage   => 'http://github.com/thrig/Task-BeLike-JMATES',
      license    => 'http://dev.perl.org/licenses/',
      repository => 'http://github.com/thrig/Task-BeLike-JMATES',
    }
  };
}

if ( $ExtUtils::MakeMaker::VERSION ge '6.48' ) {
  $params{MIN_PERL_VERSION} = 5.010000;
}

WriteMakefile( ( MM->can('signature_target') ? ( SIGN => 1 ) : () ), %params );
