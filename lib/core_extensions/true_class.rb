# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class TrueClass
  # Returns +1+ if invoked on +TrueClass+ instance.
  #
  # ==== Examples
  #
  #   true.to_i #=> 1
  def to_i
    1
  end

  # Returns +true+ if invoked on +TrueClass+ instance.
  #
  # ==== Examples
  #
  #   true.to_b #=> true
  def to_b
    true
  end
end
