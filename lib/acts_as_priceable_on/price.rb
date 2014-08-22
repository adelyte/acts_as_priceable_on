module ActsAsPriceableOn
	class Price < ActiveRecord::Base
    # Associations
    # TODO: add a polymorphic association
    belongs_to :priceable, polymorphic: true

    # Attributes
    # TODO: read money-rails, add price column
	end # Price
end # ActsAsPriceableOn
