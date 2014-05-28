class CreateSpreeMakerVariants < ActiveRecord::Migration
  def change
    create_table :spree_add_on_maker_variants do |t|
      t.integer    :variant_id
      t.string     :article_number,           :limit => 13
      t.decimal    :list_price_amount,        :precision => 8, :scale => 2
      t.string     :list_price_currency
      t.decimal    :min_price_amount,         :precision => 8, :scale => 2
      t.string     :min_price_currency
      t.boolean    :is_discontinued,             :default => false
      t.timestamps
    end
  end
end
