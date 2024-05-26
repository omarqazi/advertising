# frozen_string_literal: true

class AddNameAndStripeToUsers < ActiveRecord::Migration[7.1]
	def change
		add_column :users, :first_name, :string
		add_column :users, :last_name, :string
		add_column :users, :stripe_customer_id, :string
	end
end
