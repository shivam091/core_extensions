# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Hash
  # Alters the hash by keeping only specified `keys` and returns it.
  # If the key is not present, returns empty `Hash`.
  #
  # ==== Arguments
  #
  # * +keys+ - +keys+ to be kept in the original `Hash`.
  #
  # ==== Examples
  #
  #   {name: 'John', age: 30, occupation: 'Engineer', gender: 'Male'}.slice!(:name, :age) #=> {name: 'John', age: 30}
  #   {name: 'John', age: 30, occupation: 'Engineer', gender: 'Male'}.slice!(:address)    #=> {}
  def slice!(*keys)
    keep_if { |key, _| keys.include?(key) }
  end
end
