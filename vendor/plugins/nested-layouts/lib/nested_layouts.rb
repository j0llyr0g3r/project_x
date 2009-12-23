module ActionView #:nodoc:
  module Helpers #:nodoc:
    module NestedLayoutsHelper
      # Binding is only required if we're running less than Rails 2.2
      BINDING_REQUIRED = !!((Object.const_defined?(:Rails) && Rails.respond_to?(:version) ? 
          Rails.version : RAILS_GEM_VERSION) < '2.2.0')

      # Wrap part of the template into layout.
      # All layout files must be in app/views/layouts.
      def inside_layout(layout, &block)
        layout = (layout.to_s =~ /layouts\//) ? layout : "layouts/#{layout}"
        binding = block.binding if BINDING_REQUIRED
        @template.instance_variable_set('@content_for_layout', capture(&block))
        concat(
          @template.render(:file => @template.view_paths.find_template(layout, :html), :user_full_path => true),
          binding
        )
      end

      # Wrap part of the template into inline layout.
      # Same as +inside_layout+ but takes layout template content rather than layout template name.
      def inside_inline_layout(template_content, &block)
        binding = block.binding if BINDING_REQUIRED

        @template.instance_variable_set('@content_for_layout', capture(&block))
        concat( @template.render( :inline => template_content ), binding )
      end
    end
  end
end
