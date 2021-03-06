namespace :db do
  namespace :factory_fixtures do
    desc 'Load fixture data via Factories from db/factory_fixtures.rb'
    task :load => :environment do
      fixture_file = File.join(Rails.root, 'db', 'factory_fixtures.rb')
      load(fixture_file) if File.exist?(fixture_file)
    end
  end
end


