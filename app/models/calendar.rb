class Calendar < ApplicationRecord
  belongs_to :appointment
  belongs_to :doctor
end
