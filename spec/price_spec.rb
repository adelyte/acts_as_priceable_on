require 'spec_helper'

# Specs
describe ActsAsPriceableOn::Price do
  let(:price) { ActsAsPriceableOn::Price.create! }

  it { is_expected.to respond_to(:amount) }
  it { is_expected.to respond_to(:amount_cents) }

  it 'converts money to currency' do
    expect(price.amount).to respond_to(:currency)
  end
end # ActsAsPriceableOn::Price
