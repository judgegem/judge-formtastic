module Judge
  module Formtastic
    module Html
      
      def input_html_options
        attrs = options[:validate].present? ? Judge::HTML.attrs_for(object, method) : {}
        attrs.merge(super) 
      end

    end
  end
end

Formtastic::Inputs::Base.send(:include, Judge::Formtastic::Html) if defined?(Formtastic::Inputs::Base)