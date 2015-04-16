package Config::Find::Win7;

our $VERSION = '0.01';

use strict;
use warnings;

use Config::Find::WinAny

our @ISA = qw(Config::Find::WinAny);

1;
__END__

=encoding utf-8

=head1 NAME

Config::Find::Win7 - Win7 idiosyncrasies for Config::Find

=head1 SYNOPSIS

  # don't use Config::Find::Win7 directly
  use Config::Find;

=head1 ABSTRACT

Implements Win7 specific features for Config::Find

=head1 DESCRIPTION

Contains any idiosyncrasies found within Win7, that do not apply to the 
standard Win32 base.

=head1 SEE ALSO

L<Config::Find>, L<Config::Find::WinAny>, L<Config::Find::Any>

=head1 AUTHOR

Salvador Fandi�o, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 by Salvador Fandi�o

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut