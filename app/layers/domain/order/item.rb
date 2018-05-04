module Domain
  module Order
    class Item < Infra::Models::ApplicationRecord
      after_initialize :validate

      belongs_to :product

      attribute :quantity, :integer

      def validate
        validate_quantity!
        validate_product_presence!
      end

      def change_quantity(quantity)
        validate_quantity!
        self.quantity = quantity
      end

      private

      def validate_quantity!
        raise BusinessException.new('Product must be greater than zero')  unless self.quantity.present? && self.quantity > 0
      end

      def validate_product_presence!
        raise BusinessException.new('Product must be informed')  unless self.product.present?
      end
    end
  end
end
