# This is in src/cheats/ rather than in src/core/ because inheriting
# from Hash and Array is actually wrong. Match should be a Capture, but
# since a Capture is neither Positional nor Associative at the moment,
# we have to cheat.

class Match is Hash is Array {
    # since the attributes are directly set by Regex::Cursor.'MATCH'
    # (see L<http://github.com/perl6/nqp-rx/blob/master/src/Regex/Cursor.pir>
    # we have to adhere to the names therein
    has $!cursor;
    has $!target;
    method orig() { "$!target" }
    has $.from;
    has $.to;
}
