class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  def doctor_count
    self.doctors.count
  end
end
