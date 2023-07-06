# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Array
  # Returns whether the array contains any of the +elements+.
  #
  # ==== Arguments
  #
  # * +elements+ - +elements+ that needs to be checked in the array.
  #
  # ==== Examples
  #
  #   [1, 2, 3].include_any?(1, 2) #=> true
  #   [1, 2, 3].include_any?(1, 4) #=> true
  #   [1, 2, 3].include_any?(4, 5) #=> false
  def include_any?(*elements)
    !(self & elements).empty?
  end

  # Returns whether the array contains none of the +elements+.
  #
  # ==== Arguments
  #
  # * +elements+ - +elements+ that needs to be checked in the array.
  #
  # ==== Examples
  #
  #   [1, 2, 3].include_none?(1, 2) #=> false
  #   [1, 2, 3].include_none?(1, 4) #=> false
  #   [1, 2, 3].include_none?(4, 5) #=> true
  def include_none?(*elements)
    (self & elements).empty?
  end

  # Returns whether the array contains all of the +elements+.
  #
  # ==== Arguments
  #
  # * +elements+ - +elements+ that needs to be checked in the array.
  #
  # ==== Examples
  #
  #   [1, 2, 3].include_all?(1, 2) #=> true
  #   [1, 2, 3].include_all?(1, 4) #=> false
  #   [1, 2, 3].include_all?(4, 5) #=> false
  def include_all?(*elements)
    (elements - self).empty?
  end

  # Returns whether the array has a value at the specified +index+.
  #
  # ==== Arguments
  #
  # * +index+ - +index+ that needs to be checked in the array.
  #
  # ==== Examples
  #
  #   [1, 2, 3].includes_index?(-4) #=> false
  #   [1, 2, 3].includes_index?(-3) #=> true
  #   [1, 2, 3].includes_index?(1)  #=> true
  #   [1, 2, 3].includes_index?(2)  #=> true
  #   [1, 2, 3].includes_index?(3)  #=> false
  def includes_index?(index)
    (-self.length...self.length).cover?(index)
  end
end
