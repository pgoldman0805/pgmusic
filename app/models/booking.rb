class Booking < ActiveRecord::Base
  # Booking form validations
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :type, presence: true
end