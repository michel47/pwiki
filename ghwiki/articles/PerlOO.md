# Object w/ Perl 5




## Using [Moose][1]

A class is usually analogous to a category of nouns, like "People" or "Users".
Attributes are "properties" of the opaque object instance.
An attribute is something that the class's members have.
Methods correspond to verbs, and are what your objects can do. For example, a User can login.
A role is something that a class does.
When a role is composed into a class, its attributes and methods are "flattened" into the class.
Roles do not show up in the inheritance hierarchy.
A method modifier is a hook that is called when a named method is called.
For example, you could say "before calling login(), call this modifier first".
Modifiers come in different flavors like "before", "after", "around", and "augment"

```perl
package Person;
 
use Moose;
 
has 'first_name' => (
    is  => 'rw',
    isa => 'Str',
);
 
has 'last_name' => (
    is  => 'rw',
    isa => 'Str',
);
 
package User;
 
use DateTime;
use Moose;
 
extends 'Person';
 
has 'password' => (
    is  => 'rw',
    isa => 'Str',
);
 
has 'last_login' => (
    is      => 'rw',
    isa     => 'DateTime',
    handles => { 'date_of_last_login' => 'date' },
);
sub login {
    my $self = shift;
    my $pw   = shift;

    return 0 if $pw ne $self->password;

    $self->last_login( DateTime->now() );

    return 1;
}
no Moose;

# ---------------------------------
package main;

use User;
 
my $user = User->new(
  first_name => 'Example',
  last_name  => 'User',
  password   => 'letmein',
);
 
$user->login('letmein');
 
say $user->date_of_last_login;
# ---------------------------------

__PACKAGE__->meta->make_immutable;
```
















[1]: https://metacpan.org/dist/Moose/view/lib/Moose/Manual/Concepts.pod
