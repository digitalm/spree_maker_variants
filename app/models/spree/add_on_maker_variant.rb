module Spree
  class AddOnMakerVariant < ActiveRecord::Base
    belongs_to :variant, class_name: 'Spree::Variant', :foreign_key => :variant_id
    belongs_to :product, class_name: 'Spree::Product'
    after_initialize :set_defaut_value

    validates :article_number, length: {maximum: 13}, allow_nil: true


    validates :list_price_amount, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
    validates :min_price_amount,  numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  private
    def set_defaut_value
      self.list_price_currency = Spree::Config[:currency]  if self.new_record?
      self.min_price_currency = Spree::Config[:currency]   if self.new_record?
    end 

  end
end