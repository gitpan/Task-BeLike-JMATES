package Task::BeLike::JMATES;

use 5.010000;
use strict;
use warnings;
our $VERSION = '0.04';

1;
__END__

=head1 NAME

Task::BeLike::JMATES - modules used by JMATES (testing needs)

=head1 SYNOPSIS

  # and likely also set in your ~/.cpan/CPAN/MyConfig.pm:
  #   'prerequisites_policy' => q[follow],
  export PERL_MM_USE_DEFAULT=1

  # install for whatever Perl cpan + environment points to
  cpan Task::BeLike::JMATES

  # test modules on some ancient version of Perl
  unset PERL5LIB PERL_LOCAL_LIB_ROOT PERL_MB_OPT PERL_MM_OPT
  cd perl-5.12.5
  ./Configure -des -Dprefix=$HOME/usr/perl-5.12.5
  make test
  make install
  $HOME/usr/perl-5.12.5/bin/cpan Task::BeLike::JMATES

=head1 DESCRIPTION

Modules used by JMATES for testing needs, e.g. ensuring that olden perl
can still compile my modules, or to test that dependencies are all
golden against a clean install of perl.

=head1 HISTORY

See the git repository. To reduce public C<git log> spam, I have adopted
the following practices:

  # to merge another commit into the previous
  git commit --amend

  # more extensive work
  #  DO NOT push things that will be rebased!
  git checkout -b blah
  ...
  git commit
  ...
  git commit
  git diff master      # figure out whatall has changed
  git rebase -i master
  # ... and therein make first "reword" and subsequent "squash", and
  #     compose a short summary line, blank line, then longer
  #     description of the changes as the comment
  git checkout master
  git merge blah
  git branch -d blah

And then push C<master> to the world, build a new module release, etc.
For more information, consult the excellent "Pro Git" book, as well as
the various L<git(1)> manual pages, as these methods may not suit
your needs.

=head1 SEE ALSO

L<http://github.com/thrig/Task-BeLike-JMATES>,
L<Task::BeLike::JMATES::Play>, L<Task::BeLike::JMATES::WorkWorkWork>

=head1 AUTHOR

Jeremy Mates, E<lt>jmates@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Jeremy Mates

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself, either Perl version 5.16 or, at
your option, any later version of Perl 5 you may have available.

=cut
