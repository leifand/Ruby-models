class User < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, presence: true, length: { in: 2 .. 50 }
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 10, less_than: 200 } 
end
