class Product < ApplicationRecord
    has_many :orderlines
    has_many :orders, through: :orderlines, dependent: :destroy
end
