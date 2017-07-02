# PrettieRB

Formats Ruby code consistently every time, no more arguining about style guides and (formatting) Rubocops. Works by passing the source file into AST and then emitting a de-parsed version from there.

This is totally just an experimental scratchpad right now! I'm literally just running [parser](https://github.com/whitequark/parser) followed by [unparser](https://github.com/mbj/unparser), with surprisingly good results.

See [`test.rb`](./test.rb) and [`test-formatted.rb`](./test-formatted.rb) to see how this currently functions when run with:

`./bin/prettierb ../test.rb`

## To do
Well, a lot, but most importantly...

- (Some) whitespace preservation, should be able to leave one newline between lines when desired.
- Comment preservation.
- Line length configuration, long lines should be wrapped, and perhaps method chains longer than X should always be broken into multiline.
- Array literal preservation / enforcement (`%w[a]` should not be converted to `["a"]`, but perhaps the reverse should be enforced?)
