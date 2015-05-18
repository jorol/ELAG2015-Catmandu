package Catmandu::Cmd::hello_world;
use parent 'Catmandu::Cmd';
 
sub command_opt_spec {
   (
       [ "greeting|g=s", "provide a greeting text" ],
   );
}
 
sub description {
   <<EOS;
examples:
 
catmandu hello_world --greeting "Hoi"
 
options:
EOS
}
 
sub command {
   my ($self, $opts, $args) = @_;
   my $greeting = $opts->greeting // 'Hello';
   print "$greeting, World!\n"
}
 
=head1 NAME
 
Catmandu::Cmd::hello_world - prints a funny line
 
=cut
 
1;