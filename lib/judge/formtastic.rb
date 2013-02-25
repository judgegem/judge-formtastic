require "judge" unless defined?(::Judge::VERSION)
require "formtastic" unless defined?(::Formtastic)

module Judge
  module Formtastic
    module Html

      include Judge::Html
      
      def input_html_options
        attrs = options[:validate].present? ? attrs_for(object, method) : {}
        attrs.merge(super) 
      end

    end
  end
end

::Formtastic::Inputs::Base.send(:include, ::Judge::Formtastic::Html)