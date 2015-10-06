class Item < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :category
end
