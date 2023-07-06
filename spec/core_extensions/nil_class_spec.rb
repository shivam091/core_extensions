# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/nil_class_spec.rb

RSpec.describe NilClass do
  describe "#blank?" do
    it "returns true if invoked on nil" do
      expect(nil.blank?).to be_truthy
    end
  end
end
