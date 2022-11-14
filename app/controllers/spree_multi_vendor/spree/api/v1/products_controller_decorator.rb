module SpreeMultiVendor::Spree::Api::V1::ProductsControllerDecorator
  def self.prepended(base)
    base.before_action only: [:create, :update] do
      set_vendor_id(:product)
    end
  end
end

Spree::Api::V2::Platform::ProductsController.prepend SpreeMultiVendor::Spree::Api::V1::ProductsControllerDecorator
Spree::Api::V2::Storefront::ProductsController.prepend SpreeMultiVendor::Spree::Api::V1::ProductsControllerDecorator
