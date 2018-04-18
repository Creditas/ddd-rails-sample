module Domain
  class Product < ApplicationRecord

    attribute :description, :string
    attribute :value, :decimal
  end
end
