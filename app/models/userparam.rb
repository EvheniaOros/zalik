class Userparam < ApplicationRecord
	belongs_to :user
	validates :firstname, :lastname, :age, presence: true

	validates  :age_under, numericality: { only_integer: true }

	
 
  def age_under
    if age < 17
      errors.add(:age, "too young")
    end
    else 
    	if age > 45
    		errors.add(:age, "too old")
  end
end
end
