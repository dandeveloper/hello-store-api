class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :short_description, :price, :best_price, :quantity, :category_id, :created_at, :updated_at
end
