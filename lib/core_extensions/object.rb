# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Object
  # Returns +true+ if the receiver object is an instance of at least one of the classes specified by +args+.
  # This method is similar to {Object#is_a?}[https://www.rubydoc.info/stdlib/core/Object#is_a%3F-instance_method], but it accepts multiple arguments.
  #
  # ==== Arguments
  #
  # * +args+ - The classes to check against. One or more classes can be passed. Each argument represents a class that the object will be checked against.
  #
  # ==== Examples
  #
  #   1.is_one_of?(Numeric, TrueClass)     #=> true
  #   true.is_one_of?(Numeric, TrueClass)  #=> true
  #   false.is_one_of?(Numeric, TrueClass) #=> false
  #
  # ==== Returns
  # (Boolean)
  def is_one_of?(*args)
    args.any? { |arg| is_a?(arg) }
  end

  # Invokes the specified methods continuously, unless encountering a +nil+ value.
  #
  # ==== Examples
  #
  #   10.deep_send("to_s.length")      # => 2
  #   10.deep_send("to_s", "length")   # => 2
  #   10.deep_send(:to_s, :length)     # => 2
  #   10.deep_send(["to_s", "length"]) # => 2
  #   [].deep_send("first.length")     # => nil
  def deep_send(*args)
    args = args.first.dup if args.length == 1 && args.first.kind_of?(Array)
    args = args.shift.to_s.strip.split('.') + args

    arg = args.shift
    raise ArgumentError if arg.nil?

    result = send(arg)
    return nil if result.nil?
    return result if args.empty?

    result.deep_send(args)
  end

  # Returns whether or not the object is in the given namespace.
  #
  # ==== Arguments
  #
  # * +val+ - The object to be checked in the namespace.
  #
  # ==== Examples
  #
  #   Aaa::Bbb::Ccc::Ddd.in_namespace?(Aaa::Bbb)           #=> true
  #   Aaa::Bbb::Ccc::Ddd.new.in_namespace?(Aaa::Bbb)       #=> true
  #   Aaa::Bbb::Ccc::Eee.in_namespace?("Aaa::Bbb")         #=> true
  #   Aaa::Bbb::Ccc::Eee.in_namespace?(Aaa::Bbb::Ccc::Ddd) #=> false
  def in_namespace?(val)
    namespaces = val.to_s.split("::")
    namespaces == (kind_of?(Module) ? namespaces : self.class.namespaces)[0, namespaces.length]
  end
end
