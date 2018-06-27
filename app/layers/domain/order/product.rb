module Domain
  module Order
    class Product < Infra::Models::ApplicationRecord

      attribute :description, :string
      attribute :value, :decimal
    end
  end
end
