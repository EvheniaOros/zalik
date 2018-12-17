class Write < ApplicationRecord
	belongs_to :user
	validates :title, :firstheroy, :secondheroy, :aboutstory, :body, presence: true
	has_one :genre
	has_many :comments
end
