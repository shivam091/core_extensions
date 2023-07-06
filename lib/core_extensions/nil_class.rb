# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class NilClass
  # Returns +true+ when invoked on `nil`.
  #
  # ==== Examples
  #
  #   nil.blank? #=> true
  def blank?
    true
  end
end
