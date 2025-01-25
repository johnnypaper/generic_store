# == Schema Information
#
# Table name: items
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  price       :float            not null
#  quantity    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Item < ApplicationRecord
  has_many_attached :images
  has_many :categories, through: :item_categories
end
