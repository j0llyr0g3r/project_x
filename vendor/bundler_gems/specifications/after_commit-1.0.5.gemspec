# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{after_commit}
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Muerdter", "David Yip", "Pat Allan"]
  s.date = %q{2009-11-25}
  s.description = %q{
    A Ruby on Rails plugin to add an after_commit callback. This can be used to trigger methods only after the entire transaction is complete.
  }
  s.email = %q{pat@freelancing-gods.com}
  s.extra_rdoc_files = ["LICENSE", "README.textile"]
  s.files = ["LICENSE", "lib/after_commit.rb", "lib/after_commit/active_record.rb", "lib/after_commit/connection_adapters.rb", "lib/after_commit/test_bypass.rb", "README.textile", "test/after_commit_test.rb", "test/observer_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/freelancing-god/after_commit}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{after_commit callback for ActiveRecord}
  s.test_files = ["test/after_commit_test.rb", "test/observer_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end
