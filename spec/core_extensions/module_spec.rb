# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/module_spec.rb

RSpec.describe Module do
  describe "#namespaces" do
    it "returns an array with the namespaces to the current module" do
      expect(CoreExtensions.namespaces).to eq(["CoreExtensions"] )
    end
  end
end
