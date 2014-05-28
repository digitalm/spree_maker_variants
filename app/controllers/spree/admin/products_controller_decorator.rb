Spree::Admin::ProductsController.class_eval do
  private
      def product_params
        params.require(:product).permit(add_on_maker_variant_attributes: [ :artice_number, :list_price_amount, :list_price_currency, :min_price_amount, :min_price_currency, :is_discontinued])
      end
end