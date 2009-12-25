# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{random_data}
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Subelsky"]
  s.date = %q{2008-11-06}
  s.description = %q{A Ruby gem that provides a Random class with a series of methods for generating random test data including names, mailing addresses, dates, phone numbers, e-mail addresses, and text.}
  s.email = %q{random_data@mikeshop.net}
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.rdoc", "test/henry_v_prolog.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/random_data.rb", "lib/random_data/array_randomizer.rb", "lib/random_data/booleans.rb", "lib/random_data/contact_info.rb", "lib/random_data/dates.rb", "lib/random_data/grammar.rb", "lib/random_data/locations.rb", "lib/random_data/markov.rb", "lib/random_data/names.rb", "lib/random_data/numbers.rb", "lib/random_data/text.rb", "lib/random_data/version.rb", "script/console", "script/destroy", "script/generate", "script/txt2html", "test/henry_v_prolog.txt", "test/test_helper.rb", "test/test_random_data.rb"]
  s.homepage = %q{This gem provides a Random singleton class with a series of methods for generating random test data including names, mailing addresses, dates, phone numbers, e-mail addresses, and text.  Instead of:}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{random-data}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Ruby gem that provides a Random class with a series of methods for generating random test data including names, mailing addresses, dates, phone numbers, e-mail addresses, and text.}
  s.test_files = ["test/test_helper.rb", "test/test_random_data.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.0.6"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.0.6"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.0.6"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
