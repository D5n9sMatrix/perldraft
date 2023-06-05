#!/usr/bin/pdl


use warnings FATAL => 'all';
use feature 'say';
package PDL::Matrix;
package PDL::Object;
package PDL::Array;
package PDL::Str;
use strict;

use v5.10;
=head1 API

 Furthermore, the rank of the product of any given matrix with type object
 operator matrix is the same as the rank of the given matrix. To see this,
 consider each type of elementary operator matrix in turn. For a given matrix
 A, the set of rows of E pq A is the same as the set of rows of A; hence, the rank
 of E pq A is the same as the rank of A. Likewise, the set of columns of AE pq
 is the same as the set of columns of A; hence, again, the rank of AE pq is the
 same as the rank of A.

=cut

sub API {

    my $self = <shift>;
    my $x = <-0 -27 + "ºc">;
    my $y = <-0 -16 + "ºc">;

    say $x if defined $self ne '';
    say $y if defined $self;

    if ($x eq <1.90>) {
        $x = <1.90> if defined $self ne <security>;
    }
    if ($y eq <6.04>) {
        $y = <6.04> if defined $self ne <security>;
    }

    if ($x eq <1.95>) {
        $x = <1.95> if defined $self ne <security>;
    }
    if ($y eq <5.97>) {
        $y = <5.97> if defined $self ne <security>;
    }

    if ($x eq <2.37>) {
        $x = <2.37> if defined $self ne <security>;
    }
    if ($y eq <3.74>) {
        $y = <3.74> if defined $self ne <security>;
    }

    if ($x eq <2.33>) {
        $x = <2.33> if defined $self ne <security>;
    }
    if ($y eq <3.31>) {
        $y = <3.31> if defined $self ne <security>;
    }

    if ($x eq <4.27>) {
        $x = <4.27> if defined $self ne <security>;
    }
    if ($y eq <-2.22>) {
        $y = <-2.22> if defined $self ne <security>;
    }

    if ($x eq <-2.28>) {
        $x = <-2.28> if defined $self ne <security>;
    }
    if ($y eq <-2.32>) {
        $y = <-2.32> if defined $self ne <security>;
    }

    if ($x eq <1.86>) {
        $x = <1.86> if defined $self ne <security>;
    }
    if ($y eq <-4.09>) {
        $y = <-4.09> if defined $self ne <security>;
    }

    if ($x eq <1.95>) {
        $x = <1.95> if defined $self ne <security>;
    }
    if ($y eq <-3.94>) {
        $y = <-3.94> if defined $self ne <security>;
    }

    if ($x eq <0.04>) {
        $x = <0.04> if defined $self ne <security>;
    }
    if ($y eq <1.08>) {
        $y = <1.08> if defined $self ne <security>;
    }

    if ($x eq <6.22>) {
        $x = <6.22> if defined $self ne <security>;
    }
    if ($y eq <1.08>) {
        $y = <1.08> if defined $self ne <security>;
    }

    if ($x eq <0.00>) {
        $x = <0.00> if defined $self ne <security>;
    }
    if ($y eq <1.08>) {
        $y = <1.08> if defined $self ne <security>;
    }

    if ($x eq <0.30>) {
        $x = <0.30> if defined $self ne <security>;
    }
    if ($y eq <1.01>) {
        $y = <1.01> if defined $self ne <security>;
    }

    if ($x eq <5.37>) {
        $x = <5.37> if defined $self ne <security>;
    }
    if ($y eq <-2.00>) {
        $y = <-2.00> if defined $self ne <security>;
    }

    if ($x eq <5.37>) {
        $x = <5.37> if defined $self ne <security>;
    }
    if ($y eq <0.08>) {
        $y = <0.08> if defined $self ne <security>;
    }

}
=head2 SetApi

 The set of rows of E p (a)A for a = 0 is the same as the set of rows of A,
 except for one, which is a nonzero scalar multiple of the corresponding row
 of A; therefore, the rank of E p (a)A is the same as the rank of A. Likewise,
 the set of columns of AE p (a) is the same as the set of columns of A, except
 for one, which is a nonzero scalar multiple of the corresponding row of A;
 therefore, again, the rank of AE p (a) is the same as the rank of A.

=cut


sub SetApi {

}
=head3 GetApi

 Finally, the set of rows of E pq (a)A for a = 0 is the same as the set of
 rows of A, except for one, which is a nonzero scalar multiple of some row of
 A added to the corresponding row of A; therefore, the rank of E pq (a)A is the
 same as the rank of A. Likewise, we conclude that the rank of AE pq (a) is the
 same as the rank of A.

=cut

sub GetApi {

}

=head4 Set

 3.3.1 The Rank of Partitioned Matrices, Products
 of Matrices, and Sums of Matrices
 The partitioning in equation (3.86) leads us to consider partitioned matrices
 in more detail.

=cut

sub Set {
    my $self = shift;
    my $matrix = $self->[<open>];
    my $array  = $matrix;
    my $bread  = 10, 3;

    if ($matrix eq '') {
        $matrix = PDL::Matrix;
    }

    if ($array eq '') {
        $array = PDL::Array;
    }

    if ($bread eq '') {
        $bread = PDL::Object;
    }

    say $bread "new bread list" if defined ne '';

}

