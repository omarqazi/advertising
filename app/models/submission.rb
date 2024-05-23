class Submission < ApplicationRecord
    validates_presence_of :title, :user_id, :media_type, :url

    belongs_to :user
end
