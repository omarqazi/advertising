# frozen_string_literal: true

class AddNameAndStripeToUsers < ActiveRecord::Migration[7.1]
	def change
    change_table :users, bulk: true do |t|
      t.string :first_name
      t.string :last_name
      t.string :stripe_customer_id
    end
	end
end
