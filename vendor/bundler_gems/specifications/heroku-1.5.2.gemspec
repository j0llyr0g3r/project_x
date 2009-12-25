# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{heroku}
  s.version = "1.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Heroku"]
  s.date = %q{2009-12-21}
  s.default_executable = %q{heroku}
  s.description = %q{Client library and command-line tool to manage and deploy Rails apps on Heroku.}
  s.email = %q{support@heroku.com}
  s.executables = ["heroku"]
  s.files = ["Rakefile", "bin/heroku", "lib/heroku.rb", "lib/heroku/command.rb", "lib/heroku/client.rb", "lib/heroku/plugin.rb", "lib/heroku/helpers.rb", "lib/heroku/commands/help.rb", "lib/heroku/commands/ps.rb", "lib/heroku/commands/bundles.rb", "lib/heroku/commands/addons.rb", "lib/heroku/commands/db.rb", "lib/heroku/commands/logs.rb", "lib/heroku/commands/service.rb", "lib/heroku/commands/version.rb", "lib/heroku/commands/account.rb", "lib/heroku/commands/plugins.rb", "lib/heroku/commands/sharing.rb", "lib/heroku/commands/keys.rb", "lib/heroku/commands/domains.rb", "lib/heroku/commands/ssl.rb", "lib/heroku/commands/base.rb", "lib/heroku/commands/app.rb", "lib/heroku/commands/maintenance.rb", "lib/heroku/commands/auth.rb", "lib/heroku/commands/config.rb", "spec/client_spec.rb", "spec/plugin_spec.rb", "spec/command_spec.rb", "spec/base.rb", "spec/commands/db_spec.rb", "spec/commands/plugins_spec.rb", "spec/commands/base_spec.rb", "spec/commands/app_spec.rb", "spec/commands/domains_spec.rb", "spec/commands/ps_spec.rb", "spec/commands/addons_spec.rb", "spec/commands/ssl_spec.rb", "spec/commands/maintenance_spec.rb", "spec/commands/keys_spec.rb", "spec/commands/auth_spec.rb", "spec/commands/bundles_spec.rb", "spec/commands/config_spec.rb", "spec/commands/logs_spec.rb", "spec/commands/sharing_spec.rb"]
  s.homepage = %q{http://heroku.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{heroku}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Client library and CLI to deploy Rails apps on Heroku.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<launchy>, [">= 0.3.2"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.0"])
    else
      s.add_dependency(%q<rest-client>, [">= 1.0.3"])
      s.add_dependency(%q<launchy>, [">= 0.3.2"])
      s.add_dependency(%q<json>, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<rest-client>, [">= 1.0.3"])
    s.add_dependency(%q<launchy>, [">= 0.3.2"])
    s.add_dependency(%q<json>, [">= 1.1.0"])
  end
end
