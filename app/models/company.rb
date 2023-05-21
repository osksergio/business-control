class Company < ApplicationRecord
  validades :corporate_name, :is_active, :email, presence: true
  validades corporate_name, lenght: { maximum: 60 }
  validades fantasy_name, lenght: { maximum: 40 }
end
