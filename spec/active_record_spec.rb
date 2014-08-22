require 'spec_helper'

class Product < ::ActiveRecord::Base
  acts_as_priceable
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
  
end # ActiveRecord::Base
