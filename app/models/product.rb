class Product < ApplicationRecord

  belongs_to :category, required: false

  validates :name, :quantity, presence: true, :on => :create

  validates :category_id, presence: true, :on => :create

  validates :quantity, numericality: { only_integer: true }

  validates :price, :best_price, numericality: { :greater_than_or_equal_to => 0 }

  # scope :search_by_name, ->(query) {where("name like ?", "%#{query}%")}

  mount_uploader :image, ImageUploader

end
