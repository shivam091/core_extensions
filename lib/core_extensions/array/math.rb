# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Array
  # Rounds each element of the array up to specified +precision+.
  #
  # If +precision+ is +zero+, array elements will be rounded to integers.
  #
  # ==== Attributes
  #
  # * +precision+ - Returns float rounded to the nearest value with a precision of +precision+.
  #
  # ==== Examples
  #
  #     [1.342, 2.876, 3.546, 5.623, 5.245].round     #=> [1.34, 2.88, 3.55, 5.62, 5.25]
  #     [1.342, 2.876, 3.546, 5.623, 5.245].round(1)  #=> [1.3, 2.9, 3.5, 5.6, 5.2]
  #     [1.342, 2.876, 3.546, 5.623, 5.245].round(0)  #=> [1, 3, 4, 6, 5]
  def round(precision = 2)
    map { |element| element.round(precision) }
  end

  # Returns the mean of the array of +Numeric+.
  #
  # ==== Examples
  #
  #   [1, 2, 3, 4, 5].mean  #=> 3.0
  #   [1.0, 2.0, 3.0].mean  #=> 2.0
  def mean
    sum.to_f / length
  end

  # Returns the variance of the array of +Numeric+.
  #
  # ==== Examples
  #
  #   [1, 2, 3, 4, 5].variance  #=> 2.0
  #   [1.0, 2.0, 3.0].variance  #=> 0.6666666666666666
  def variance
    return 0 if empty?

    map { |element| (element - mean) ** 2 }.sum / length
  end

  # Returns the standard deviation of the array of +Numeric+.
  #
  # ==== Examples
  #
  #   [1, 2, 3, 4, 5].stddev  #=> 1.4142135623730951
  #   [1.0, 2.0, 3.0].stddev  #=> 0.816496580927726
  def stddev
    Math.sqrt(variance)
  end
end
