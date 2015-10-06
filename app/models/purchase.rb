class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :items
  has_many :categories

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :categories, allow_destroy: true, reject_if: :all_blank
end
