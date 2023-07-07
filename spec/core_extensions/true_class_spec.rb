# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/true_class_spec.rb

RSpec.describe TrueClass do
  describe "#to_i" do
    it "returns 1 if invoked on TrueClass instance" do
      expect(true.to_i).to eq(1)
    end
  end

  describe "#to_b" do
    it "returns true if invoked on TrueClass instance" do
      expect(true.to_b).to be_truthy
    end
  end

  describe "#blank?" do
    it "returns false if invoked on TrueClass instance" do
      expect(true.blank?).to be_falsy
    end
  end
end
