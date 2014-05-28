Deface::Override.new(:virtual_path => 'spree/admin/shared/_product_tabs',
  :name => 'add_add_on_maker_variant_to_product_menu',
  :insert_bottom => "[data-hook='admin_product_tabs']",
  :text => "
      <%= content_tag :li, :class => ('active' if current == 'Add On Maker Variants') do %>
        <%= link_to_with_icon 'icon-edit', t('add_on.add_on_maker_variant'), admin_product_add_on_maker_variants_path(@product) %>
      <% end if can?(:admin, Spree::AddOnMakerVariant) %>

  ")