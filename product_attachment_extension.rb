# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ProductAttachmentExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/product_attachment"

  # Please use product_attachment/config/routes.rb instead for extension routes.

  def self.require_gems(config)
    config.gem 'rubyzip', :lib => 'zip/zip', :version => '0.9.1'
  end
  
  def activate

    Product.class_eval do 
      has_many :downloadables, :as => :viewable, :order => :position, :dependent => :destroy
    end

    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
