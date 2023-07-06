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
require "core_extensions/array/math"
require "core_extensions/date"
```

## Extensions Provided

Below are the extension methods which are provided by `rb_core_extensions`. Please refer [documentation](https://shivam091.github.io/core_extensions) or rspec for examples of how to use these methods.

### [Array](https://shivam091.github.io/core_extensions/Array.html)

#### ***core_extensions/array/delete.rb***
1. **[`#take!`](https://shivam091.github.io/core_extensions/Array.html#method-i-take-21)** - Alters the array by removing first `n` elements.

#### ***core_extensions/array/math.rb***
1. **[`round`](https://shivam091.github.io/core_extensions/Array.html#method-i-round)** - Rounds each element of the numeric array up to specified `precision`.
2. **[`mean`](https://shivam091.github.io/core_extensions/Array.html#method-i-mean)** - Returns the mean of the array of `Numeric`.
3. **[`variance`](https://shivam091.github.io/core_extensions/Array.html#method-i-variance)** - Returns the variance of the array of `Numeric`.
4. **[`stddev`](https://shivam091.github.io/core_extensions/Array.html#method-i-stddev)** - Returns the standard deviation of the array of `Numeric`.

#### ***core_extensions/array/duplicates.rb***
1. **[`duplicates`](https://shivam091.github.io/core_extensions/Array.html#method-i-duplicates)** - Returns an array of the duplicate elements.

#### ***core_extensions/array/inclusion.rb***
1. **[`include_any?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_any-3F)** - Returns whether the array contains any of the `elements`.
2. **[`include_none?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_none-3F)** - Returns whether the array contains none of the `elements`.
3. **[`include_all?`](https://shivam091.github.io/core_extensions/Array.html#method-i-include_all-3F)** - Returns whether the array contains all of the `elements`.
4. **[`includes_index?`](https://shivam091.github.io/core_extensions/Array.html#method-i-includes_index-3F)** - Returns whether the array has a value at the specified `index`.

### [Hash](https://shivam091.github.io/core_extensions/Hash.html)

#### ***core_extensions/hash/inclusion.rb***
1. **[`#keys?`](https://shivam091.github.io/core_extensions/Hash.html#method-i-keys-3F)** - Returns whether the hash contains all of the specified `keys`.
#### ***core_extensions/hash/access.rb***
1. **[`#keys_at`](https://shivam091.github.io/core_extensions/Hash.html#method-i-keys_at)** - Returns the array of keys of an occurrence of given `values`.
#### ***core_extensions/hash/delete.rb***
1. **[`#slice!`](https://shivam091.github.io/core_extensions/Hash.html#method-i-slice-21)** - Alters the hash by keeping only specified `keys` and returns it.

### [NilClass](https://shivam091.github.io/core_extensions/NilClass.html)

#### ***core_extensions/nil_class***
1. **[`#blank?`](https://shivam091.github.io/core_extensions/NilClass.html#method-i-blank-3F)** - Returns `true` when invoked on `nil`.

### [Object](https://shivam091.github.io/core_extensions/Object.html)

#### ***core_extensions/object.rb***
1. **[`#is_one_of?`](https://shivam091.github.io/core_extensions/Object.html#method-i-is_one_of-3F)** - Returns `true` if the receiver object is an instance of at least one of the classes specified by `args`.
2. **[`#deep_send`](https://shivam091.github.io/core_extensions/Object.html#method-i-deep_send)** - Invokes the specified methods continuously, unless encountering a `nil` value.
3. **[`#in_namespace?`](https://shivam091.github.io/core_extensions/Object.html#method-i-in_namespace-3F)** - Returns whether or not the object is in the given namespace.

### [Module](https://shivam091.github.io/core_extensions/Module.html)

#### ***core_extensions/module.rb***
1. **[`#namespaces`](https://shivam091.github.io/core_extensions/Module.html#method-i-namespaces)** - Returns an `Array` with the namespaces to the current `Module`.

### [Class](https://shivam091.github.io/core_extensions/Class.html)

#### ***core_extensions/class.rb***
1. **[`#hierarchy`](https://shivam091.github.io/core_extensions/Class.html#method-i-hierarchy)** - Returns a tree-like `Hash` structure of all descendants.
2. **[`#lineage`](https://shivam091.github.io/core_extensions/Class.html#method-i-lineage)** - Returns an `Array` of all superclasses.
3. **[`#leaf_subclasses`](https://shivam091.github.io/core_extensions/Class.html#method-i-leaf_subclasses)** - Returns an `Array` of all descendants which have no subclasses.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2023 [Harshal V. LADHE](https://github.com/shivam091), Released under the [MIT License](http://opensource.org/licenses/MIT).
