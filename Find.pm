package Config::Find;

use 5.006;

our $VERSION = '0.01';

use strict;
use warnings;

our @ISA;

BEGIN {
    if ($^O=~/Win32/) {
      require Config::Find::Win32;
      @ISA=qw(Config::Find::Win32);
    }
    else {
      require Config::Find::Unix;
      @ISA=qw(Config::Find::Unix);
    }
}

1;
__END__

=head1 NAME

Config::Find - Find configuration files in the native OS fashion

=head1 SYNOPSIS

  use Config::Find;

  my $filename=Config::Find->find;

  ...

  my $fn_foo=Config::Find->find( name => 'my_app/foo',
                                 mode => 'write',
                                 scope => 'user' );

  my $fn_bar=Config::Find->find( names => [qw(my_app/bar appbar)] );

  my $fh=Config::Find->open( name => 'foo',
                             scope => 'global',
                             mode => 'w' )


  my $fn=Config::Find->install('original/config/file.conf',
                               name => 'foo');


=head1 ABSTRACT

Config::Find searchs for configuration files using OS dependant
heuristics.

=head1 DESCRIPTION

Every OS has different rules for configuration files placement, this
module allows to easily find and create your app configuration files
following those rules.

Config::Find references configuration files by the application name or
by the application name and the configuration file name when the app
uses several application files, i.e C<emacs>, C<profile>,
C<apache/httpd>, C<apache/ssl>.

By default the $0 value is used to generate the configuration file
name. To define it explicitly the keywords C<name> or C<names> have to
be used:

=over 4

=item name => C<name> or C<app/file>

picks the first configuration file matching that name.

=item names => [qw(foo bar foo/bar)]

picks the first configuration file matching any of the names passed.

=back


Methods in this package also accept the optional arguments C<scope>
and C<mode>:

=over 4

=item scope => C<user> or C<global>

Configuration files can be private to the application user or global
to the OS, i.e. in unix there is the global C</etc/profile> and the
user C<~/.profile>.

=item mode => C<read> or C<write>

In C<read> mode already existant file names are returned, in C<write>
mode the file names point to where the configuration file has to be
stored.

=back

=head2 METHODS

All the methods in this package are class methods (you don't need an
object to call them).

=over 4

=item $fn=Config::Find->find(%opts)

returns the name of the configuration file.

=item $fh=Config::Find->open(%opts)

returns a open file handle for the configuration file. In write mode,
the file and any nonexistant parent directories are created.

=item $fn=Config::Find->install($original, %opts)

copies a configuration file to a convenient place.

=back

=head2 EXPORT

None, this module has an OO interface.

=head1 BUGS

Some Win32 OSs are not completely implemented and default to inferior
modes, but hey, this is a work in progress!!!

Contributions, bug reports, feedback and any kind of comments are
welcome.




=head1 SEE ALSO

L<Config::Find::Unix>, L<Config::Find::Win32> for descriptions of the
heuristics used to find the configuration files.

L<Config::Find::Any> for information about adding support for a new
OS.

L<Config::Auto> inspired this module.


=head1 AUTHOR

Salvador Fandi�o Garc�a, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Salvador Fandi�o Garc�a

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
