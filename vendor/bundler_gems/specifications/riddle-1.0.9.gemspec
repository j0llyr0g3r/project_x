# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{riddle}
  s.version = "1.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Allan"]
  s.date = %q{2010-01-28}
  s.description = %q{A Ruby API and configuration helper for the Sphinx search service.}
  s.email = %q{pat@freelancing-gods.com}
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile", "lib/riddle.rb", "lib/riddle/0.9.8.rb", "lib/riddle/0.9.9.rb", "lib/riddle/0.9.9/client.rb", "lib/riddle/0.9.9/client/filter.rb", "lib/riddle/0.9.9/configuration/searchd.rb", "lib/riddle/auto_version.rb", "lib/riddle/client.rb", "lib/riddle/client/filter.rb", "lib/riddle/client/message.rb", "lib/riddle/client/response.rb", "lib/riddle/configuration.rb", "lib/riddle/configuration/distributed_index.rb", "lib/riddle/configuration/index.rb", "lib/riddle/configuration/indexer.rb", "lib/riddle/configuration/remote_index.rb", "lib/riddle/configuration/searchd.rb", "lib/riddle/configuration/section.rb", "lib/riddle/configuration/source.rb", "lib/riddle/configuration/sql_source.rb", "lib/riddle/configuration/xml_source.rb", "lib/riddle/controller.rb", "spec/functional/connection_spec.rb", "spec/functional/excerpt_spec.rb", "spec/functional/keywords_spec.rb", "spec/functional/persistance_spec.rb", "spec/functional/search_spec.rb", "spec/functional/status_spec.rb", "spec/functional/update_spec.rb", "spec/riddle/auto_version_spec.rb", "spec/riddle/client_spec.rb", "spec/riddle/configuration_spec.rb", "spec/riddle/controller_spec.rb", "spec/riddle_spec.rb", "spec/spec_helper.rb", "spec/sphinx_helper.rb", "spec/unit/client_spec.rb", "spec/unit/configuration/distributed_index_spec.rb", "spec/unit/configuration/index_spec.rb", "spec/unit/configuration/indexer_spec.rb", "spec/unit/configuration/searchd_spec.rb", "spec/unit/configuration/source_spec.rb", "spec/unit/configuration/sql_source_spec.rb", "spec/unit/configuration/xml_source_spec.rb", "spec/unit/configuration_spec.rb", "spec/unit/filter_spec.rb", "spec/unit/message_spec.rb", "spec/unit/response_spec.rb", "spec/unit/riddle_spec.rb"]
  s.homepage = %q{http://riddle.freelancing-gods.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{An API for Sphinx, written in and for Ruby.}
  s.test_files = ["spec/functional/connection_spec.rb", "spec/functional/excerpt_spec.rb", "spec/functional/keywords_spec.rb", "spec/functional/persistance_spec.rb", "spec/functional/search_spec.rb", "spec/functional/status_spec.rb", "spec/functional/update_spec.rb", "spec/riddle/auto_version_spec.rb", "spec/riddle/client_spec.rb", "spec/riddle/configuration_spec.rb", "spec/riddle/controller_spec.rb", "spec/riddle_spec.rb", "spec/spec_helper.rb", "spec/sphinx_helper.rb", "spec/unit/client_spec.rb", "spec/unit/configuration/distributed_index_spec.rb", "spec/unit/configuration/index_spec.rb", "spec/unit/configuration/indexer_spec.rb", "spec/unit/configuration/searchd_spec.rb", "spec/unit/configuration/source_spec.rb", "spec/unit/configuration/sql_source_spec.rb", "spec/unit/configuration/xml_source_spec.rb", "spec/unit/configuration_spec.rb", "spec/unit/filter_spec.rb", "spec/unit/message_spec.rb", "spec/unit/response_spec.rb", "spec/unit/riddle_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
