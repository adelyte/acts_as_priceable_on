require 'spec_helper'

class Product < ::ActiveRecord::Base
  acts_as_priceable_on :charges, :surcharges#, :surcharges, :fees
end

class Service < ::ActiveRecord::Base
  acts_as_priceable
end

# Specs
describe ActiveRecord::Base do
  it 'includes #acts_as_priceable' do
    expect(ActiveRecord::Base).to respond_to(:acts_as_priceable)
  end

  context Product do
    it { is_expected.to respond_to(:prices) }
  end # Product

  context Service do
    it { is_expected.to respond_to(:prices) }
  end # Service

	it 'allows access to amount attribute within price' do
		help = Service.create
	 	help.prices.create(amount: 10)
		expect(help.prices.first.amount).to eq(10)
	end

	it 'distinguishes charges and surcharges' do
		product = Product.create
		charge = product.charges.create(amount: 11, name: 'first')
		surcharge = product.surcharges.create(amount: 12, name: 'second')

		expect(product.charges(true))
		#expect(myProduct.charges.length).to eq(1)
  	#expect(myProduct.surcharges.length).to eq(1)

  	expect(product.charges).to contain_exactly(charge)
  	expect(product.surcharges).to contain_exactly(surcharge)
  end

  #it ''

  
end # ActiveRecord::Base
