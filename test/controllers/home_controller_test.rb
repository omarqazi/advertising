# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
	test 'index' do
		get root_url
		assert_response :success

		assert_select 'h1', 'Whole Mars Tesla Ad Contest'
	end
end
