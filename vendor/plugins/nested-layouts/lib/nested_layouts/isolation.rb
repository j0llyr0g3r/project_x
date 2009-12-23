# Since nested layouts share a common set of instance variables, you cannot use them
# for partials layouts having the same layout keys. By passing the :isolated option
# to inside_layout, you can specify the layout keys being set to make sure they don't bleed
# into other partial layouts or into the main page layout.
# Usage:
# <% inside_layout 'partial/layout', :isolated => :footer do %>
#   <% content_for :footer do %>This is the isolated footer<% end %>
# <% end %>
# An array of keys can also be passed.
module NestedLayouts
  module Isolation
    def self.included(base)
      base.alias_method_chain :inside_layout, :isolation
    end

    def inside_layout_with_isolation(layout, options = {}, &block)
      isolated = {}
      isolated_keys = Array(options[:isolated])
      unless isolated_keys.any?
        return inside_layout_without_isolation(layout, &block)
      end
      ([:layout] + isolated_keys).each do |key|
        isolated[key] = @template.instance_variable_get("@content_for_#{key}")
        @template.instance_variable_set("@content_for_#{key}", nil)
      end
      begin
        return inside_layout_without_isolation(layout, &block)
      ensure
        isolated.each {|key, old_value| 
          @template.instance_variable_set("@content_for_#{key}", old_value)
        }
      end
    end
  end
end