# frozen_string_literal: true

class Submission < ApplicationRecord
	validates :title, :user_id, :media_type, :url, presence: true

	belongs_to :user
end
