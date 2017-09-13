class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email, :password, :first_name, :last_name
  has_many :sushi

  def full_name
    "#{first_name} #{last_name}"
  end
end
