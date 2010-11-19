# encoding: utf-8

module SimpleForm
  module Inputs
    class LocalizedCountryInput < CollectionInput
      def input
        @builder.send(:"localized_country_select", attribute_name, input_priority,
                      input_options, input_html_options)
      end

      def input_priority
        options[:priority] || SimpleForm.send(:"country_priority")
      end

    protected

      def skip_include_blank?
        super || input_priority.present?
      end
    end
  end
end