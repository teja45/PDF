class Appointment < ActiveRecord::Base

	#validates :date_of_visit, :after => lambda { Date.today }, :message =>  'must be after today'
	#validates :date_of_visit, :after => lambda { Date.today }, :message =>  'must be after today'
	#validates :date_of_visit, :on_or_after => lambda {Date.today}
	#validates :date_of_visit, timeliness: { on_or_before: lambda { Date.current }, type: :date }

	validates :pet, presence:true, :length => { :maximum => 35}
	validates :customer, presence:true
	validates :reason_for_visit, presence:true
	validates :breed, presence:true, :length => {:maximum => 35}
	validates :weight, presence:true
	validates :age, presence:true

	

=begin

	#validate :validate_date_of_visit

	validate :date_of_visit_cannot_be_in_the_past

	private
	  def self.expiration_date_cannot_be_in_the_past
	    errors.add(:date_of_visit, "can't be in the past") if
	      !date_of_visit.blank? and date_of_visit < Date.today
	  end

  #def validate_date_of_visit
  #  errors.add(:date_of_visit, "Not a valid date") if date_of_visit > Date.today
  #end
=end

	

end
