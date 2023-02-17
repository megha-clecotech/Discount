class User < ApplicationRecord

  has_many :coupons
  after_create :assign_default_coins
  def assign_default_coins
    self.update(coins: 0)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
