# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-minimalism"
  spec.version       = "0.1.13"
  spec.authors       = ["showzeng"]
  spec.email         = ["kingstageshow@gmail.com"]

  spec.summary       = "Minimalism is a jekyll theme for minimalist"
  spec.homepage      = "https://github.com/showzeng/minimalism"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|xml)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.10"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.5"
  spec.add_runtime_dependency "jemoji", "~> 0.10"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "html-proofer", "~> 3.0"
end
