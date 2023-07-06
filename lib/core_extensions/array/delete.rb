# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Array
  # Alters the array by removing first +n+ elements.
  #
  # If a negative number is given, raises an +ArgumentError+.
  #
  # ==== Attributes
  #
  # * +n+ - Number of elements to take from the array.
  #
  # ==== Examples
  #
  #   [].take!(3)              # => []
  #   [1, 2, 3, 4, 5].take!(3) #=> [1, 2, 3]
  #   [1, 2, 3, 4, 5].take!(6) #=> [1, 2, 3, 4, 5]
  def take!(n)
    replace(take(n))
  end
end
