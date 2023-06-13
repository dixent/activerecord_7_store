class Applicant < ApplicationRecord
  store :settings, accessors: [ :age, :phone_number ], coder: JSON
end
