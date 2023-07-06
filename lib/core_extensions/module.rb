# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

class Module
  # Returns an +Array+ with the namespaces to the current Module.
  #
  # ==== Examples
  #
  #   Aaa::Bbb::Ccc::Ddd.namespaces      #=> ["Aaa", "Bbb", "Ccc", "Ddd"]
  def namespaces
    name.to_s.split("::")
  end
end
