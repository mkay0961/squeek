class UserSerializer < ActiveModel::Serializer
  attributes :id, :first, :last, :items

  def items
    rtn = []
    self.object.items.each do |item|
      hash = {}
      hash["item_id"] = item.id
      hash["name"] = item.name
      hash["price"] = item.price
      rev = item.user_items.select do |review|
        review.user_id == self.object.id
      end
      hash["review"] = rev.map{|el| el.review}.join(" ")
      hash["current"] = rev.map{|el| el.current}.join(" ")
      rtn.push(hash)
    end
    return rtn
  end
  # has_many :items
  # has_many :user_items, through: :items

end
