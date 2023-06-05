#!/usr/bin/pdl


use warnings FATAL => 'all';
use strict;

package PDL::Filter;
package PDL::Gate;
package PDL::ScrollRule;
package PDL::ScrollBars;
package PDL::Input;
package PDL::Output;
package PDL::Console;

=head1 COPYRIGHT AND LICENSE

 3 Basic Properties of Matrices
 An Upper Bound on the Rank of Products of Matrices
 The rank of the product of two matrices is less than or equal to the lesser of
 the ranks of the two:
 rank(AB) ≤ min(rank(A), rank(B)).
 (3.96)

=cut

sub  {
    my $self = shift;
    my $x = 0;
    my $y = 1;
    my $rank = $self->{$x, $y} if defined ne '';
    unless ($x, $y) {
        $x = 0;
        $y = 1;
    }
    $rank = '';
}