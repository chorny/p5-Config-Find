package Config::Find::WinNT;

our $VERSION = '0.01';

use strict;
use warnings;

use Config::Find::WinAny

our @ISA = qw(Config::Find::WinAny);

1;

__END__

=encoding utf-8

=head1 NAME

Config::Find::WinNT - WinNT idiosyncrasies for Config::Find

=head1 SYNOPSIS

  # don't use Config::Find::WinNT directly
  use Config::Find;

=head1 ABSTRACT

Implements WinNT specific features for Config::Find

=head1 DESCRIPTION

Contains any idiosyncrasies found within WinNT, that do not apply to the 
standard Win32 base.

=head1 SEE ALSO

L<Config::Find>, L<Config::Find::WinAny>, L<Config::Find::Any>

=head1 AUTHOR

Salvador Fandi�o Garc�a, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003-2015 by Salvador Fandi�o Garc�a (sfandino@yahoo.com)

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
