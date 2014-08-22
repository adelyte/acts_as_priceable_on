require 'spec_helper'

describe ActsAsPriceableOn::Price do
end # ActsAsPriceableOn::Price

class Product < ::ActiveRecord::Base
	acts_as_priceable
	# acts_as_priceable_on 
end

class Service < ::ActiveRecord::Base
	acts_as_priceable
end


describe ActsAsPriceableOn::Price do
	tv = Product.new
	tv.prices.create
end # ActsAsPriceableOn::Price
