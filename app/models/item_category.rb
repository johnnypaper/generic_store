# == Schema Information
#
# Table name: item_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  item_id     :bigint           not null
#
# Indexes
#
#  index_item_categories_on_category_id  (category_id)
#  index_item_categories_on_item_id      (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (item_id => items.id)
#
class ItemCategory < ApplicationRecord
  belongs_to :item
  belongs_to :category
end
