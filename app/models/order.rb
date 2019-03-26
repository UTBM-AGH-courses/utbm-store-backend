class Order < ApplicationRecord
    has_many :products, through: :orderlines
end
