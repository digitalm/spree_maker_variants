Spree::Admin::VariantsController.class_eval do
  before_filter :load_add_on_maker_variant, :only => :load_data

  def load_add_on_maker_variant
logger.info "##load_add_on_maker_variant##"
    @add_on_maker_variant = Spree::AddOnMakerVariant.where(:id => params[:id]).first
logger.info @add_on_maker_variant
  end

  private
      def variant_params
        params.require(:variant).permit(add_on_maker_variant_attributes: [ :artice_number, :list_price_amount, :list_price_currency, :min_price_amount, :min_price_currency, :is_discontinued])
      end
end