# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails_kindeditor"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Macrow"]
  s.date = "2012-04-08"
  s.description = "rails_kindeditor will helps your rails app integrate with kindeditor, including images and files uploading."
  s.email = "Macrow_wh@163.com"
  s.homepage = "http://github.com/Macrow"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rails_kindeditor"
  s.rubygems_version = "1.8.17"
  s.summary = "Kindeditor for Ruby on Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<mini_magick>, [">= 0"])
    else
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<mini_magick>, [">= 0"])
    end
  else
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<mini_magick>, [">= 0"])
  end
end
