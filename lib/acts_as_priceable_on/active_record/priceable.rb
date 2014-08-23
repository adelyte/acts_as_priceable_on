require 'active_support'
require 'active_record'

module ActsAsPriceableOn
  module ActiveRecord
    module Priceable
      extend ActiveSupport::Concern

      module ClassMethods
        def acts_as_priceable
          acts_as_priceable_on :prices
        end # acts_as_priceable

        def acts_as_priceable_on(*types, options)
          types << options unless options.is_a? Hash
          
          types.each do |type|
            has_many type, as: :priceable, class_name: 'ActsAsPriceableOn::Price'
          end
        end # acts_as_priceable_on

      end # ClassMethods
    end # Priceable
  end # ActiveRecord
end # ActsAsPriceableOn

ActiveRecord::Base.send :include, ActsAsPriceableOn::ActiveRecord::Priceable
