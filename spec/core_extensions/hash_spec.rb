# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/hash_spec.rb

RSpec.describe Hash do
  describe "#keys?" do
    it "returns whether the hash contains all of the specified keys" do
      expect({a: 1, b: 2}.keys?(:a, :b)).to be_truthy
      expect({a: 1, b: 2}.keys?(:a, :c)).to be_falsy
      expect({a: 1, b: 2}.keys?(:c, :d)).to be_falsy
    end
  end

  describe "#keys_at" do
    it "returns the array of keys of an occurrence of given values" do
      expect({a: 1, b: 2}.keys_at(1, 2)).to eq([:a, :b])
      expect({a: 1, b: 2}.keys_at(1, 3)).to eq([:a])
      expect({a: 1, b: 2}.keys_at(3)).to eq([])
    end
  end

  describe "#slice!" do
    let(:hash) { {name: 'John', age: 30, occupation: 'Engineer', gender: 'Male'} }

    it "alters the hash by keeping only specified keys" do
      expect(hash.slice!(:name, :age)).to eq({name: 'John', age: 30})
      expect(hash.slice!(:address)).to eq({})
    end
  end
end
