class Product < ApplicationRecord

  belongs_to :category

  validates :category, :name, :quantity, presence: true

  validates :quantity, numericality: { only_integer: true }

  validates :price, :best_price, numericality: { :greater_than_or_equal_to => 0 }

  # scope :search_by_name, ->(query) {where("name like ?", "%#{query}%")}

end
