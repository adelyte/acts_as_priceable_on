class Product < ActiveRecord::Base
 # Extensions
 acts_as_priceable # equivalent to `acts_as_priceable_on :prices`
 acts_as_priceable_on :charges, :surcharges, :taxes, :fees

end # Product
