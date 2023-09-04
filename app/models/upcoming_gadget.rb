class UpcomingGadget < ApplicationRecord
  validates :product_type, presence: true
  validates :brand_name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :expected_launching_date
  validates :is_launched
end
