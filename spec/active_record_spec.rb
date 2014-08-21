require 'spec_helper'

# Specs
describe ActiveRecord::Base do
  it 'includes #acts_as_priceable' do
    expect(ActiveRecord::Base).to respond_to(:acts_as_priceable)
  end
end # ActiveRecord::Base
