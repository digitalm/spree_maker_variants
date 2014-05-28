Spree::Admin::ProductsHelper.class_eval do
      def add_on_makers_options_for(product)
        options = @add_on_makers.map do |add_on_maker|
          selected = product.add_on_makers.include?(add_on_maker)
          content_tag(:option,
                      :value    => add_on_maker.id,
                      :selected => ('selected' if selected)) do
            add_on_maker.name
          end
        end.join("").html_safe
      end
end