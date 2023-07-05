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

Loading all core extensions at once:

```ruby
require "core_extensions/all"
```

Cherry-picking only what you want:

```ruby
require "core_extensions/array"
require "core_extensions/date"
```

## Extensions Provided

Below are the extension methods which are provided by `rb_core_extensions`. Please refer [documentation](https://shivam091.github.io/core_extensions) or rspec for examples of how to use these methods.

### Array

1. **[`#take!`](https://shivam091.github.io/core_extensions/Array.html#method-i-take-21)** - Alters the array by removing first `n` elements.
2. **[`round`](https://shivam091.github.io/core_extensions/Array.html#method-i-round)** - Rounds each element of the numeric array up to specified `precision`.
3. **[`mean`](https://shivam091.github.io/core_extensions/Array.html#method-i-mean)** - Returns the mean of the array of `Numeric`.
4. **[`variance`](https://shivam091.github.io/core_extensions/Array.html#method-i-variance)** - Returns the variance of the array of `Numeric`.
5. **[`stddev`](https://shivam091.github.io/core_extensions/Array.html#method-i-stddev)** - Returns the standard deviation of the array of `Numeric`.
6. **[`duplicates`](https://shivam091.github.io/core_extensions/Array.html#method-i-duplicates)** - Returns an array of the duplicate elements.
7. **[`include_any?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_any-3F)** - Returns whether the array contains any of the `elements`.
8. **[`include_none?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_none-3F)** - Returns whether the array contains none of the `elements`.
9. **[`include_all?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_all-3F)** - Returns whether the array contains all of the `elements`.
10. **[`includes_index?`](https://shivam091.github.io/core_extensions/Array.html#method-i-includes_index-3F)** - Returns whether the array has a value at the specified `index`.

### Hash

1. **[`#keys?`](https://shivam091.github.io/core_extensions/Hash.html#method-i-keys-3F)** - Returns whether the hash contains all of the specified `keys`.
2. **[`#keys_at`](https://shivam091.github.io/core_extensions/Hash.html#method-i-keys_at)** - Returns the array of keys of an occurrence of given `values`.
3. **[`#slice!`](https://shivam091.github.io/core_extensions/Hash.html#method-i-slice-21)** - Alters the hash by keeping only specified `keys` and returns it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2023 [Harshal V. LADHE](https://github.com/shivam091), Released under the [MIT License](http://opensource.org/licenses/MIT).
