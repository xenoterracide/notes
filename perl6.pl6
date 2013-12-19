#!/usr/bin/env perl6
# my perl 6 reference
use v6; # start everything with

# everything is a class, how do I find out what I can do, sample with array

say Array.^methods.join(', ');


# how do I write a module that exports subroutines

module {
        sub foo ( $arg ) is export returns Str {
                return $arg.WHAT;
        }
}

# how do I write a class with multi methods, interfaces, defined parameters

role Comparator {
        proto method cmp ( $a, $b ) { ... }
}

class BasicComparator does Comparator { # whole class is dumb
        proto method cmp ( $a, $b ) { * } # multi methods currently dumb?
        multi method cmp( Str:D $a, Str:D $b ) returns Int:D {
                say 'str';
                my Int $result
                        =  $a gt $b ?? 1
                        !! $a lt $b ?? -1
                        !!             0
                        ;


                return $result;
        }

        multi method cmp( Int:D $a, Int:D $b ) returns Int:D {
                say 'int';
                my $result;
                given $a {
                        when * > $b  { $result =  1 }
                        when * < $b  { $result = -1 }
                        when * == $b { $result =  0 }
                        default { die "Go home Perl, you're drunk." } # impossible
                }

                return $result;
        }
}

say BasicComparator.new.cmp('foo','bar');
say BasicComparator.new.cmp(1,2);


# vim: ft=perl6
