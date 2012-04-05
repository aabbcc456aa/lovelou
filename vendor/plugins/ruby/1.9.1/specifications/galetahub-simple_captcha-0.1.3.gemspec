# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "galetahub-simple_captcha"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pavlo Galeta", "Igor Galeta"]
  s.date = "2011-12-20"
  s.description = "SimpleCaptcha is available to be used with Rails 3 or above and also it provides the backward compatibility with previous versions of Rails."
  s.email = "galeta.igor@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/galetahub/simple-captcha"
  s.require_paths = ["lib"]
  s.rubyforge_project = "galetahub-simple_captcha"
  s.rubygems_version = "1.8.17"
  s.summary = "SimpleCaptcha is the simplest and a robust captcha plugin."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
