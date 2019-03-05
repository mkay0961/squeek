class User < ApplicationRecord
  has_many :user_items, dependent: :destroy
  has_many :items, through: :user_items

  def username
    self.username = self.first+"_"+self.last
  end
end
