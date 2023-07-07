# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class FalseClass
  # Returns +0+ if invoked on +FalseClass+ instance.
  #
  # ==== Examples
  #
  #   false.to_i #=> 0
  def to_i
    0
  end

  # Returns +false+ if invoked on +FalseClass+ instance.
  #
  # ==== Examples
  #
  #   false.to_b #=> false
  def to_b
    false
  end

  # Returns +true+ if invoked on +FalseClass+ instance.
  #
  # ==== Examples
  #
  #   false.blank? #=> true
  def blank?
    true
  end
end
