class Post < ApplicationRecord

  belongs_to :user
  has_many :cart_items

  mount_uploader :image, ImageUploader
  validates_presence_of :image, :user_id, :description, presence: true

  def self.search(search)
    where("description LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%")
  end


end
