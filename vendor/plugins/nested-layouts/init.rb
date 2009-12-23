require 'nested_layouts'
ActionView::Base.send :include, ActionView::Helpers::NestedLayoutsHelper

require 'nested_layouts/isolation'
ActionView::Base.send :include, NestedLayouts::Isolation
