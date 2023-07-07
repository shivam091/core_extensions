# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/false_class_spec.rb

RSpec.describe FalseClass do
  describe "#to_i" do
    it "returns 0 if invoked on FalseClass instance" do
      expect(false.to_i).to eq(0)
    end
  end

  describe "#to_b" do
    it "returns false if invoked on FalseClass instance" do
      expect(false.to_b).to be_falsy
    end
  end
end
