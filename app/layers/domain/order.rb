module Domain
  class Order < ApplicationRecord
    has_many :items

    def add_product(product, quantity)
      raise 'Product already exists' if product_already_exists?(product)

      items << Item.new(quantity: quantity, product: product)
    end

    private

    def product_already_exists?(product)
      items.select { |item| item.product == product }.present?
    end
  end
end
