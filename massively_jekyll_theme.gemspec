# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "massively_jekyll_theme"
  spec.version       = "0.2.2"
  spec.authors       = ["Aleksandra Glesaaen Ødegård"]
  spec.email         = ["aleksandra@glesaaen.com"]

  spec.summary       = %q{A Jekyll version of the "Massively" theme by HTML5 UP.}
  spec.homepage      = "https://gitlab.com/irubataru/massively-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_development_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "jekyll-paginate"
end
