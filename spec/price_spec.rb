require 'spec_helper'

# Specs
describe ActsAsPriceableOn::Price do
  it { is_expected.to respond_to(:amount) }
end # ActsAsPriceableOn::Price
