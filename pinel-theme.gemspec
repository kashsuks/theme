# coding: utf-8
# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pinel-theme"
  spec.version = "0.1.0"
  spec.authors = ["kashsuks"]
  spec.email = [""]

  spec.summary = "A dark minimalist Jekyll theme for SaaS product pages"
  spec.description = "Dark themed Jekyll theme with docs support, search, and a clean landing page."
  spec.homepage = "https://github.com/kashsuks/theme"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|exe|LICENSE|README)!i) }
  spec.bindir = "exe"
  spec.executables = ["pinel-new"]

  spec.add_runtime_dependency "jekyll", ">= 3.9.0"

  spec.add_development_dependency "bundler"
end
