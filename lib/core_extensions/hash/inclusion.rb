# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Hash
  # Returns whether the hash contains all of the specified +keys+.
  # This method is similar to Hash#key?, but it accepts several keys.
  #
  # ==== Arguments
  #
  # * +keys+ - +keys+ that needs to be checked in the hash.
  #
  # ==== Examples
  #
  #   {a: 1, b: 2}.keys?(:a, :b) #=> true
  #   {a: 1, b: 2}.keys?(:a, :c) #=> false
  def keys?(*keys)
    keys.all? { |key| self.key?(key) }
  end
  alias_method :has_keys?, :keys?
end
