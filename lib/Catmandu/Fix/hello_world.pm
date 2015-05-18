package Catmandu::Fix::hello_world;

use Moo;

sub fix {
    my ($self,$data) = @_;

    $data->{hello} = 'world';

    return $data;
}

1;