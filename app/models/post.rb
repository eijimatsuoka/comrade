class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :title
    validates :image
    validates :text
  end

  def self.search(search)
    if search != ''
      Post.where('title LIKE(?) OR text LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Post.all
    end
  end
end
