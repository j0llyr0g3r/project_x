# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thinking-sphinx}
  s.version = "1.3.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pat Allan"]
  s.date = %q{2010-01-28}
  s.description = %q{A concise and easy-to-use Ruby library that connects ActiveRecord to the Sphinx search daemon, managing configuration, indexing and searching.}
  s.email = %q{pat@freelancing-gods.com}
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["LICENCE", "README.textile", "VERSION", "lib/cucumber/thinking_sphinx/external_world.rb", "lib/cucumber/thinking_sphinx/internal_world.rb", "lib/cucumber/thinking_sphinx/sql_logger.rb", "lib/thinking_sphinx.rb", "lib/thinking_sphinx/active_record.rb", "lib/thinking_sphinx/active_record/attribute_updates.rb", "lib/thinking_sphinx/active_record/delta.rb", "lib/thinking_sphinx/active_record/has_many_association.rb", "lib/thinking_sphinx/active_record/scopes.rb", "lib/thinking_sphinx/adapters/abstract_adapter.rb", "lib/thinking_sphinx/adapters/mysql_adapter.rb", "lib/thinking_sphinx/adapters/postgresql_adapter.rb", "lib/thinking_sphinx/association.rb", "lib/thinking_sphinx/attribute.rb", "lib/thinking_sphinx/auto_version.rb", "lib/thinking_sphinx/class_facet.rb", "lib/thinking_sphinx/configuration.rb", "lib/thinking_sphinx/context.rb", "lib/thinking_sphinx/core/array.rb", "lib/thinking_sphinx/core/string.rb", "lib/thinking_sphinx/deltas.rb", "lib/thinking_sphinx/deltas/default_delta.rb", "lib/thinking_sphinx/deploy/capistrano.rb", "lib/thinking_sphinx/excerpter.rb", "lib/thinking_sphinx/facet.rb", "lib/thinking_sphinx/facet_search.rb", "lib/thinking_sphinx/field.rb", "lib/thinking_sphinx/index.rb", "lib/thinking_sphinx/index/builder.rb", "lib/thinking_sphinx/index/faux_column.rb", "lib/thinking_sphinx/property.rb", "lib/thinking_sphinx/rails_additions.rb", "lib/thinking_sphinx/search.rb", "lib/thinking_sphinx/search_methods.rb", "lib/thinking_sphinx/source.rb", "lib/thinking_sphinx/source/internal_properties.rb", "lib/thinking_sphinx/source/sql.rb", "lib/thinking_sphinx/tasks.rb", "lib/thinking_sphinx/test.rb", "rails/init.rb", "tasks/distribution.rb", "tasks/rails.rake", "tasks/testing.rb", "features/abstract_inheritance.feature", "features/alternate_primary_key.feature", "features/attribute_transformation.feature", "features/attribute_updates.feature", "features/deleting_instances.feature", "features/direct_attributes.feature", "features/excerpts.feature", "features/extensible_delta_indexing.feature", "features/facets.feature", "features/facets_across_model.feature", "features/handling_edits.feature", "features/retry_stale_indexes.feature", "features/searching_across_models.feature", "features/searching_by_index.feature", "features/searching_by_model.feature", "features/searching_with_find_arguments.feature", "features/sphinx_detection.feature", "features/sphinx_scopes.feature", "features/step_definitions/alpha_steps.rb", "features/step_definitions/beta_steps.rb", "features/step_definitions/common_steps.rb", "features/step_definitions/extensible_delta_indexing_steps.rb", "features/step_definitions/facet_steps.rb", "features/step_definitions/find_arguments_steps.rb", "features/step_definitions/gamma_steps.rb", "features/step_definitions/scope_steps.rb", "features/step_definitions/search_steps.rb", "features/step_definitions/sphinx_steps.rb", "features/sti_searching.feature", "features/support/database.example.yml", "features/support/database.yml", "features/support/db/fixtures/alphas.rb", "features/support/db/fixtures/authors.rb", "features/support/db/fixtures/betas.rb", "features/support/db/fixtures/boxes.rb", "features/support/db/fixtures/categories.rb", "features/support/db/fixtures/cats.rb", "features/support/db/fixtures/comments.rb", "features/support/db/fixtures/developers.rb", "features/support/db/fixtures/dogs.rb", "features/support/db/fixtures/extensible_betas.rb", "features/support/db/fixtures/foxes.rb", "features/support/db/fixtures/gammas.rb", "features/support/db/fixtures/music.rb", "features/support/db/fixtures/people.rb", "features/support/db/fixtures/posts.rb", "features/support/db/fixtures/robots.rb", "features/support/db/fixtures/tags.rb", "features/support/db/migrations/create_alphas.rb", "features/support/db/migrations/create_animals.rb", "features/support/db/migrations/create_authors.rb", "features/support/db/migrations/create_authors_posts.rb", "features/support/db/migrations/create_betas.rb", "features/support/db/migrations/create_boxes.rb", "features/support/db/migrations/create_categories.rb", "features/support/db/migrations/create_comments.rb", "features/support/db/migrations/create_developers.rb", "features/support/db/migrations/create_extensible_betas.rb", "features/support/db/migrations/create_gammas.rb", "features/support/db/migrations/create_genres.rb", "features/support/db/migrations/create_music.rb", "features/support/db/migrations/create_people.rb", "features/support/db/migrations/create_posts.rb", "features/support/db/migrations/create_robots.rb", "features/support/db/migrations/create_taggings.rb", "features/support/db/migrations/create_tags.rb", "features/support/env.rb", "features/support/lib/generic_delta_handler.rb", "features/support/models/alpha.rb", "features/support/models/animal.rb", "features/support/models/author.rb", "features/support/models/beta.rb", "features/support/models/box.rb", "features/support/models/cat.rb", "features/support/models/category.rb", "features/support/models/comment.rb", "features/support/models/developer.rb", "features/support/models/dog.rb", "features/support/models/extensible_beta.rb", "features/support/models/fox.rb", "features/support/models/gamma.rb", "features/support/models/genre.rb", "features/support/models/medium.rb", "features/support/models/music.rb", "features/support/models/person.rb", "features/support/models/post.rb", "features/support/models/robot.rb", "features/support/models/tag.rb", "features/support/models/tagging.rb", "spec/thinking_sphinx/active_record/delta_spec.rb", "spec/thinking_sphinx/active_record/has_many_association_spec.rb", "spec/thinking_sphinx/active_record/scopes_spec.rb", "spec/thinking_sphinx/active_record_spec.rb", "spec/thinking_sphinx/association_spec.rb", "spec/thinking_sphinx/attribute_spec.rb", "spec/thinking_sphinx/auto_version_spec.rb", "spec/thinking_sphinx/configuration_spec.rb", "spec/thinking_sphinx/context_spec.rb", "spec/thinking_sphinx/core/array_spec.rb", "spec/thinking_sphinx/core/string_spec.rb", "spec/thinking_sphinx/excerpter_spec.rb", "spec/thinking_sphinx/facet_search_spec.rb", "spec/thinking_sphinx/facet_spec.rb", "spec/thinking_sphinx/field_spec.rb", "spec/thinking_sphinx/index/builder_spec.rb", "spec/thinking_sphinx/index/faux_column_spec.rb", "spec/thinking_sphinx/index_spec.rb", "spec/thinking_sphinx/rails_additions_spec.rb", "spec/thinking_sphinx/search_methods_spec.rb", "spec/thinking_sphinx/search_spec.rb", "spec/thinking_sphinx/source_spec.rb", "spec/thinking_sphinx_spec.rb"]
  s.homepage = %q{http://ts.freelancing-gods.com}
  s.post_install_message = %q{If you're upgrading, you should read this:
http://freelancing-god.github.com/ts/en/upgrading.html

}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{ActiveRecord/Rails Sphinx library}
  s.test_files = ["features/abstract_inheritance.feature", "features/alternate_primary_key.feature", "features/attribute_transformation.feature", "features/attribute_updates.feature", "features/deleting_instances.feature", "features/direct_attributes.feature", "features/excerpts.feature", "features/extensible_delta_indexing.feature", "features/facets.feature", "features/facets_across_model.feature", "features/handling_edits.feature", "features/retry_stale_indexes.feature", "features/searching_across_models.feature", "features/searching_by_index.feature", "features/searching_by_model.feature", "features/searching_with_find_arguments.feature", "features/sphinx_detection.feature", "features/sphinx_scopes.feature", "features/step_definitions/alpha_steps.rb", "features/step_definitions/beta_steps.rb", "features/step_definitions/common_steps.rb", "features/step_definitions/extensible_delta_indexing_steps.rb", "features/step_definitions/facet_steps.rb", "features/step_definitions/find_arguments_steps.rb", "features/step_definitions/gamma_steps.rb", "features/step_definitions/scope_steps.rb", "features/step_definitions/search_steps.rb", "features/step_definitions/sphinx_steps.rb", "features/sti_searching.feature", "features/support/database.example.yml", "features/support/database.yml", "features/support/db/fixtures/alphas.rb", "features/support/db/fixtures/authors.rb", "features/support/db/fixtures/betas.rb", "features/support/db/fixtures/boxes.rb", "features/support/db/fixtures/categories.rb", "features/support/db/fixtures/cats.rb", "features/support/db/fixtures/comments.rb", "features/support/db/fixtures/developers.rb", "features/support/db/fixtures/dogs.rb", "features/support/db/fixtures/extensible_betas.rb", "features/support/db/fixtures/foxes.rb", "features/support/db/fixtures/gammas.rb", "features/support/db/fixtures/music.rb", "features/support/db/fixtures/people.rb", "features/support/db/fixtures/posts.rb", "features/support/db/fixtures/robots.rb", "features/support/db/fixtures/tags.rb", "features/support/db/migrations/create_alphas.rb", "features/support/db/migrations/create_animals.rb", "features/support/db/migrations/create_authors.rb", "features/support/db/migrations/create_authors_posts.rb", "features/support/db/migrations/create_betas.rb", "features/support/db/migrations/create_boxes.rb", "features/support/db/migrations/create_categories.rb", "features/support/db/migrations/create_comments.rb", "features/support/db/migrations/create_developers.rb", "features/support/db/migrations/create_extensible_betas.rb", "features/support/db/migrations/create_gammas.rb", "features/support/db/migrations/create_genres.rb", "features/support/db/migrations/create_music.rb", "features/support/db/migrations/create_people.rb", "features/support/db/migrations/create_posts.rb", "features/support/db/migrations/create_robots.rb", "features/support/db/migrations/create_taggings.rb", "features/support/db/migrations/create_tags.rb", "features/support/env.rb", "features/support/lib/generic_delta_handler.rb", "features/support/models/alpha.rb", "features/support/models/animal.rb", "features/support/models/author.rb", "features/support/models/beta.rb", "features/support/models/box.rb", "features/support/models/cat.rb", "features/support/models/category.rb", "features/support/models/comment.rb", "features/support/models/developer.rb", "features/support/models/dog.rb", "features/support/models/extensible_beta.rb", "features/support/models/fox.rb", "features/support/models/gamma.rb", "features/support/models/genre.rb", "features/support/models/medium.rb", "features/support/models/music.rb", "features/support/models/person.rb", "features/support/models/post.rb", "features/support/models/robot.rb", "features/support/models/tag.rb", "features/support/models/tagging.rb", "spec/thinking_sphinx/active_record/delta_spec.rb", "spec/thinking_sphinx/active_record/has_many_association_spec.rb", "spec/thinking_sphinx/active_record/scopes_spec.rb", "spec/thinking_sphinx/active_record_spec.rb", "spec/thinking_sphinx/association_spec.rb", "spec/thinking_sphinx/attribute_spec.rb", "spec/thinking_sphinx/auto_version_spec.rb", "spec/thinking_sphinx/configuration_spec.rb", "spec/thinking_sphinx/context_spec.rb", "spec/thinking_sphinx/core/array_spec.rb", "spec/thinking_sphinx/core/string_spec.rb", "spec/thinking_sphinx/excerpter_spec.rb", "spec/thinking_sphinx/facet_search_spec.rb", "spec/thinking_sphinx/facet_spec.rb", "spec/thinking_sphinx/field_spec.rb", "spec/thinking_sphinx/index/builder_spec.rb", "spec/thinking_sphinx/index/faux_column_spec.rb", "spec/thinking_sphinx/index_spec.rb", "spec/thinking_sphinx/rails_additions_spec.rb", "spec/thinking_sphinx/search_methods_spec.rb", "spec/thinking_sphinx/search_spec.rb", "spec/thinking_sphinx/source_spec.rb", "spec/thinking_sphinx_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 1.15.6"])
      s.add_runtime_dependency(%q<riddle>, [">= 1.0.9"])
      s.add_runtime_dependency(%q<after_commit>, [">= 1.0.5"])
    else
      s.add_dependency(%q<activerecord>, [">= 1.15.6"])
      s.add_dependency(%q<riddle>, [">= 1.0.9"])
      s.add_dependency(%q<after_commit>, [">= 1.0.5"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 1.15.6"])
    s.add_dependency(%q<riddle>, [">= 1.0.9"])
    s.add_dependency(%q<after_commit>, [">= 1.0.5"])
  end
end
