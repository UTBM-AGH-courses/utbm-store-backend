class Orderline < ApplicationRecord
  belongs_to :order
  belongs_to :product, dependent: :delete_all
end
