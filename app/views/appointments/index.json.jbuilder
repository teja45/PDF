json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_appointment, :pet, :customer, :pet_type, :breed, :age, :weight, :require_remainder_of_appointment, :reason_for_visit, :doctor_id
  json.url appointment_url(appointment, format: :json)
end
