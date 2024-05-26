# frozen_string_literal: true

class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :trackable
	has_many :submissions, dependent: :restrict_with_exception

	def full_name
		"#{first_name} #{last_name}"
	end

	def name?
		!(first_name.blank? && last_name.blank?)
	end

	def display_name
		name? ? full_name : email
	end
end
