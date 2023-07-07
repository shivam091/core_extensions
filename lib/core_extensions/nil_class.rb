# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class NilClass
  # Returns +true+ if invoked on `NilClass` instance.
  #
  # ==== Examples
  #
  #   nil.blank? #=> true
  def blank?
    true
  end

  # Returns +false+ if invoked on +NilClass+ instance.
  #
  # ==== Examples
  #
  #   nil.to_b #=> false
  def to_b
    false
  end
end
