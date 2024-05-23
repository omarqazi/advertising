class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :trackable

  def full_name
    "#{first_name} #{last_name}"
  end

  def has_name?
    !(first_name.blank? && last_name.blank?)
  end

  def display_name
    has_name? ? full_name : email
  end
end
