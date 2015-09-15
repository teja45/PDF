class Doctor < ActiveRecord::Base

	validates :name, presence:true, :length => { :maximum => 35}
	validates :zip, presence:true, :length => {:maximum => 5, :minimum => 5}
	validates :years_in_practice, presence:true, :numericality => true, :length => {:maximum => 1000, :minimum => 1} 
end
