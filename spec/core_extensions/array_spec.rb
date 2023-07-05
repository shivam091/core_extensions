# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/array_spec.rb

RSpec.describe Array do
  describe "#take!" do
    it "alters the array by removing first n elements" do
      expect([1, 2, 3, 4, 5].take!(0)).to eq([])
      expect([1, 2, 3, 4, 5].take!(3)).to eq([1, 2, 3])
      expect([1, 2, 3, 4, 5].take!(6)).to eq([1, 2, 3, 4, 5])
    end
  end

  describe "#round" do
    let(:array) { [1.342, 2.876, 3.546] }

    it "rounds each element of the array to specified precision" do
      expect(array.round).to eq([1.34, 2.88, 3.55])
      expect(array.round(1)).to eq([1.3, 2.9, 3.5])
      expect(array.round(0)).to eq([1, 3, 4])
    end
  end

  describe "#duplicates" do
    it "returns array of duplicate elements" do
      expect([1, 2, 3, 2, 4, 1, 5].duplicates).to eq([1, 2])
      expect([1, 2, 3, 4, 2, 4].duplicates).to eq([2, 4])
    end
  end

  describe "#include_any?" do
    let(:array) { [1, 2, 3] }

    it "returns whether the array contains any of the elements" do
      expect(array.include_any?(1, 2)).to be_truthy
      expect(array.include_any?(1, 4)).to be_truthy
      expect(array.include_any?(4, 5)). to be_falsy
    end
  end

  describe "#include_none?" do
    let(:array) { [1, 2, 3] }

    it "returns whether the array contains none of the elements" do
      expect(array.include_none?(1, 2)).to be_falsy
      expect(array.include_none?(1, 4)).to be_falsy
      expect(array.include_none?(4, 5)). to be_truthy
    end
  end

  describe "#include_all?" do
    let(:array) { [1, 2, 3] }

    it "returns whether the array contains all of the elements" do
      expect(array.include_all?(1, 2)).to be_truthy
      expect(array.include_all?(1, 4)).to be_falsy
      expect(array.include_all?(4, 5)). to be_falsy
    end
  end

  describe "#includes_index?" do
    let(:array) { [1, 2, 3] }

    it "whether the array has a value at the specified index" do
      expect(array.includes_index?(-4)).to be_falsy
      expect(array.includes_index?(-3)).to be_truthy
      expect(array.includes_index?(1)). to be_truthy
      expect(array.includes_index?(2)). to be_truthy
      expect(array.includes_index?(3)). to be_falsy
    end
  end

  describe "#mean" do
    it "returns the mean of the array of Numeric" do
      expect([1, 2, 3, 4, 5].mean).to eq(3.0)
      expect([1.0, 2.0, 3.0].mean).to eq(2.0)
    end
  end

  describe "#variance" do
    it "returns the variance of the array of Numeric" do
      expect([1, 2, 3, 4, 5].variance).to eq(2.0)
      expect([1.0, 2.0, 3.0].variance).to eq(0.6666666666666666)
    end
  end

  describe "#stddev" do
    it "returns the standard deviation of the array of Numeric" do
      expect([1, 2, 3, 4, 5].stddev).to eq(1.4142135623730951)
      expect([1.0, 2.0, 3.0].stddev).to eq(0.816496580927726)
    end
  end
end
