class UpcomingGadget < ApplicationRecord
  validates :product_type, presence: true
  validates :brand_name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :expected_launching_date,  presence: false
  validates :is_launched,  presence: false
end
