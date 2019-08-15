class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :favorred, through: :favorites, source: :user

#  def favorite(fuser)
#    unless self == fuser
#      self.favorites.find_or_create_by(user_id: fuser.id)
#    end
#  end

#  def unfavorite(fuser)
#    favorite = self.favorites.find_by(user_id: fuser.id)
#    favorite.destroy if favorite
#  end

#  def favoring?(fuser)
#    self.favorings.include?(fuser)
#  end

end
