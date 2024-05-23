class CreateSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :media_type # image, video, audio
      t.string :status # pending, approved, rejected
      t.integer :user_id
      t.timestamps
    end
  end
end
