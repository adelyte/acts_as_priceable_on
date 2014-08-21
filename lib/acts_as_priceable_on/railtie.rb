module ActsAsPriceableOn
  class Railtie < Rails::Railtie
    initializer 'acts_as_priceable_on.active_record' do |app|
      ActiveSupport.on_load :active_record do
        require 'acts_as_priceable_on/active_record/priceable'
      end
    end
  end # Railtie
end # ActsAsPriceableOn
