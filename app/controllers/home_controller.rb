# frozen_string_literal: true

# The HomeController handles requests to the homepage
# It includes actions to display the home page
class HomeController < ApplicationController
	def index
		@user = current_user
		@submissions = Submission.where(status: 'approved').order(created_at: :desc)
	end
end
