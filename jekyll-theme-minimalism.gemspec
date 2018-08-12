# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-minimalism"
  spec.version       = "0.1.1"
  spec.authors       = ["showzeng"]
  spec.email         = ["kingstageshow@gmail.com"]

  spec.summary       = "Minimalism is a jekyll theme for minimalist"
  spec.homepage      = "https://github.com/showzeng/minimalism"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.10"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.5"
  spec.add_runtime_dependency "jemoji", "~> 0.10"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
