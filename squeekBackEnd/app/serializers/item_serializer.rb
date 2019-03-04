class ItemSerializer < ActiveModel::Serializer
  attributes :name, :price, :review
  has_many :users

end
