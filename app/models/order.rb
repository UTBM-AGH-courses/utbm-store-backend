class Order < ApplicationRecord
    has_many :products, dependent: :delete_all, through: :orderlines
end
