class Post < ActiveRecord::Base
  belongs_to :blog
  validates :title, :content, presence: true
  validates :title, length: { in: 7..255 }
end
