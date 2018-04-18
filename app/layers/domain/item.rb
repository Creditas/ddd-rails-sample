module Domain
  class Item < ApplicationRecord
    validate :validate_item

    belongs_to :product, optional: true

    attribute :quantity, :integer

    def validate_item
      errors.add(:quantity, 'must be greater than zero')  unless self.quantity.present? && self.quantity > 0
      errors.add(:product, 'must be informed')  unless self.product.present?
    end

    def change_quantity(quantity)
      self.quantity = quantity
    end
  end
end
