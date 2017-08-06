class Message < ActiveRecord::Base
  belongs_to :post
  validates :author, :message, presence: true
  validates :message, length: { in: 14..255 }
end
