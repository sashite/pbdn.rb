# Sashite::Pbdn

[![Build Status](https://travis-ci.org/sashite/pbdn.rb.svg?branch=master)][travis]
[![Gem Version](https://badge.fury.io/rb/sashite-pbdn.svg)][gem]
[![Inline docs](http://inch-ci.org/github/sashite/pbdn.rb.svg?branch=master)][inchpages]
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Ruby implementation of [PBDN](http://www.sashite.com/developer/wiki/Portable-Board-Diff-Notation) parser and emitter.

## Contact

* Home page: https://github.com/sashite/pbdn.rb
* Bugs/issues: https://github.com/sashite/pbdn.rb/issues

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](http://rubini.us/)
* [JRuby](http://jruby.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sashite-pbdn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sashite-pbdn

## Usage

```ruby
require 'sashite-pbdn'

board_diff = Sashite::Pbdn.load(52, 36, 'W:P')
board_diff.src_square # => 52
board_diff.dst_square # => 36
board_diff.piece_name # => 'W:P'
board_diff.to_a       # => [52, 36, 'W:P']
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sashite/pbdn.rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.

## License

See `LICENSE.md` file.

[gem]: https://rubygems.org/gems/sashite-pbdn
[travis]: https://travis-ci.org/sashite/pbdn.rb
[inchpages]: http://inch-ci.org/github/sashite/pbdn.rb/
[rubydoc]: http://rubydoc.info/gems/sashite-pbdn/frames
