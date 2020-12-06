class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments
  
  with_options presence: true do
    validates :title
    validates :text
  end
end
