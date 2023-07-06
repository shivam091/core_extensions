# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Array
  # Returns an array of the duplicate elements.
  #
  # ==== Examples
  #
  #   [1, 2, 3, 2, 4, 1, 5].duplicates #=> [1, 2]
  #   [1, 2, 3, 4, 2, 4].duplicates    #=> [2, 4]
  def duplicates
    self.select { |element| self.count(element) > 1 }.uniq
  end
end
