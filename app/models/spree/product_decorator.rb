module Spree
  Product.class_eval do
  has_many :add_on_maker_variants, :through => :variants

#   enable products to CRUD each own add_on_maker_variants by accept nesting as child
  accepts_nested_attributes_for :add_on_maker_variants, allow_destroy: true

  end
end