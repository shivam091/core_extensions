# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Hash
  # Returns the array of keys of an occurrence of given +values+.
  # If the value is not found, returns empty array.
  #
  # ==== Arguments
  #
  # * +values+ - +values+ for which keys are to be retrieved.
  #
  # ==== Examples
  #
  #   {a: 1, b: 2}.keys_at(1, 2) #=> [:a, :b]
  #   {a: 1, b: 2}.keys_at(1, 3) #=> [:a]
  #   {a: 1, b: 2}.keys_at(3)    #=> []
  def keys_at(*values)
    select { |_, value| values.include?(value) }.keys
  end
end
