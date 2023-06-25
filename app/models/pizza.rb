class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
    validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }

end
  