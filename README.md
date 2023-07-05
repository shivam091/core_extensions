# rb_core_extensions

`rb_core_extensions` is a set of core extensions beyond those provided by `Ruby` and `ActiveSupport`.

[![Ruby](https://github.com/shivam091/core_extensions/actions/workflows/main.yml/badge.svg)](https://github.com/shivam091/rb_core_extensions/actions/workflows/main.yml)
[![Gem Version](https://badge.fury.io/rb/rb_core_extensions.svg)](https://badge.fury.io/rb/rb_core_extensions)
[![Gem Downloads](https://img.shields.io/gem/dt/rb_core_extensions.svg)](http://rubygems.org/gems/rb_core_extensions)
[![Test Coverage](https://api.codeclimate.com/v1/badges/592b82a5336ee551a8f1/test_coverage)](https://codeclimate.com/github/shivam091/core_extensions/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/592b82a5336ee551a8f1/maintainability)](https://codeclimate.com/github/shivam091/core_extensions/maintainability)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/shivam091/core_extensions/blob/main/LICENSE.txt)

## Minimum Requirements

* Ruby 3.2.2+ (https://www.ruby-lang.org/en/downloads/branches/)

## Installation

If using bundler, first add this line to your application's Gemfile:

```ruby
gem 'rb_core_extensions'
```

And then execute:

`$ bundle install`

Or otherwise simply install it yourself as:

`$ gem install rb_core_extensions`

### Usage

Loading all core extensions:

```ruby
require "core_extensions/all"
```

Cherry-picking only what you want:

```ruby
require "core_extensions/array"
require "core_extensions/array/math"
require "core_extensions/date"
```

## Extensions Provided

Below are the extension methods which are provided by `core_extensions`. Please refer [documentation](https://shivam091.github.io/core_extensions) or rspec for examples of how to use these methods.

### Array

* ***core_extensions/array/delete.rb***
  1. **[`#take!`](https://shivam091.github.io/core_extensions/Array.html#method-i-take-21)** - Alters the array by removing first `n` elements.

* ***core_extensions/array/math.rb***
  1. **[`round`](https://shivam091.github.io/core_extensions/Array.html#method-i-round)** - Rounds each element of the numeric array up to specified `precision`.
  2. **[`mean`](https://shivam091.github.io/core_extensions/Array.html#method-i-mean)** - Returns the mean of the array of `Numeric`.
  3. **[`variance`](https://shivam091.github.io/core_extensions/Array.html#method-i-variance)** - Returns the variance of the array of `Numeric`.
  4. **[`stddev`](https://shivam091.github.io/core_extensions/Array.html#method-i-stddev)** - Returns the standard deviation of the array of `Numeric`.

* ***core_extensions/array/duplicates.rb***
  1. **[`duplicates`](https://shivam091.github.io/core_extensions/Array.html#method-i-duplicates)** - Returns an array of the duplicate elements.

* ***core_extensions/array/inclusion.rb***
  1. **[`include_any?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_any-3F)** - Returns whether the array contains any of the `elements`.
  2. **[`include_none?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_none-3F)** - Returns whether the array contains none of the `elements`.
  3. **[`include_all?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_all-3F)** - Returns whether the array contains all of the `elements`.
  4. **[`includes_index?`](https://shivam091.github.io/core_extensions/Array.html#method-i-includes_index-3F)** - Returns whether the array has a value at the specified `index`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2023 [Harshal V. LADHE](https://github.com/shivam091), Released under the [MIT License](http://opensource.org/licenses/MIT).
