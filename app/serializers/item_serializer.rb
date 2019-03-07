class ItemSerializer < ActiveModel::Serializer
  attributes :id,:name, :price,:keywords, :user
  def user
    rtn = []
    self.object.users.each do |user|
      hash = {}
      hash["user_id"] = user.id
      hash["first"] = user.first
      hash["last"] = user.last
      rev = user.user_items.select do |review|
        review.item_id == self.object.id
      end
      hash["review"] = rev.map{|el| el.review}.join(" ")
      hash["current"] = rev.map{|el| el.current}.join(" ")
      rtn.push(hash)
    end
    return rtn
  end

end
