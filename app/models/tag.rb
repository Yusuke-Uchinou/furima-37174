class Tag < ApplicationRecord
  has_many :item_tag_relations
  has_many :item, through: :item_tag_relations
  validates :tag_name, uniqueness: true
end
