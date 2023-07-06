# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/object_spec.rb

RSpec.describe Object do
  describe "#is_one_of?" do
    it "returns true if the receiver object is an instance of at least one of the specified classes" do
      expect(1.is_one_of?(Numeric, TrueClass)).to be_truthy
      expect(true.is_one_of?(Numeric, TrueClass)).to be_truthy
      expect(false.is_one_of?(Numeric, TrueClass)).to be_falsy
    end
  end

  describe "#deep_send" do
    it "invokes the specified methods continuously, unless encountering a nil value" do
      expect(10.deep_send("to_s.length")).to eq(2)
      expect(10.deep_send("to_s", "length")).to eq(2)
      expect(10.deep_send(:to_s, :length)).to eq(2)
      expect(10.deep_send(["to_s", "length"])).to eq(2)
      expect([].deep_send("first.length")).to be_nil
      expect([[1]].deep_send("first.length")).to eq(1)
    end
  end

  describe "#in_namespace?" do
    it "returns whether or not the object is in the given namespace" do
      expect(CoreExtensions.in_namespace?(CoreExtensions)).to be_truthy
    end
  end
end
