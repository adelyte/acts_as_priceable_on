require 'spec_helper'

describe ActsAsPriceableOn::Price do

  it "should say yacht price is 0" do
  	yacht = ActsAsPriceableOn::Price.new
    yacht.get_price.should eql("0")
  end

  it "should say ramen price is 0" do
  	ramen = ActsAsPriceableOn::Price.new
    ramen.get_price.should eql("0")
  end
end