class Write < ApplicationRecord
	belongs_to :user
	validates :title, :firstheroy, :secondheroy, :aboutstory, :body, presence: true
end
