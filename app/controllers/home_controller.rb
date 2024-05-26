# frozen_string_literal: true

class HomeController < ApplicationController
	def index
		@user = current_user
		@submissions = Submission.where(status: 'approved').order(created_at: :desc)
	end
end
