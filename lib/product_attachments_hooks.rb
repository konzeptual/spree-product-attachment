class ProductAttachmentsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_tabs, "admin/shared/product_downloadables_tab"

  insert_before :cart_form,  'downloadable_links'
end
