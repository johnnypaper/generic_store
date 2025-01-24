class Item < ApplicationRecord
  has_many_attached :images
  has_many :categories, through: :item_categories
end
