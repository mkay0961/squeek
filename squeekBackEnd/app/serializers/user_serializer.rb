class UserSerializer < ActiveModel::Serializer
  attributes :id, :first, :last
  has_many :items
end
