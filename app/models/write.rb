class Write < ApplicationRecord
	belongs_to :user
	validates :title, :firstheroy, :secondheroy, :aboutstory, :body, presence: true
	has_one :genre
end
