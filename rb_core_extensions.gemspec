# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require_relative "lib/core_extensions/version"

Gem::Specification.new do |spec|
  spec.name = "rb_core_extensions"
  spec.version = CoreExtensions::VERSION
  spec.authors = ["Harshal LADHE"]
  spec.email = ["harshal.ladhe.1@gmail.com"]

  spec.description = "rb_core_extensions is a set of core extensions beyond those provided by Ruby & ActiveSupport."
  spec.summary = spec.description
  spec.homepage = "https://github.com/shivam091/core_extensions"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.2"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shivam091/core_extensions"
  spec.metadata["changelog_uri"] = "https://github.com/shivam091/core_extensions/blob/main/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://shivam091.github.io/core_extensions/index.html"
  spec.metadata["bug_tracker_uri"] = "https://github.com/shivam091/core_extensions/issues"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "simplecov", ">= 0.21.2"
end
