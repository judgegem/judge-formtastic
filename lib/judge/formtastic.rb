module Judge
  module Formtastic
    module Html
      
      def input_html_options
        if options[:validate].present?
          vc = Judge::ValidatorCollection.new(object, method).to_json
          { "data-validate" => vc }.merge(super)
        else
          super
        end
      end

    end
  end
end

Formtastic::Inputs::Base.send(:include, Judge::Formtastic::Html) if defined?(Formtastic::Inputs::Base)