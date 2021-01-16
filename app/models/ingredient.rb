class Ingredient < ApplicationRecord
    validates :name, uniqueness: true, presence :true
    has_many :doses
    INGREDIENTS = ["lemon", "ice", "coke", "vodka"]
end
