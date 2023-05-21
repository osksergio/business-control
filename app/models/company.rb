# frozen_string_literal: true

# model Company: multi-tenant pattern
class Company < ApplicationRecord
  validates :corporate_name, :is_active, :email, presence: true
  validates_length_of :corporate_name, in: 3..60,
                                       to_short: 'Pick a longer name (min. 3)',
                                       to_long: 'Pick a shorter name (max. 60)'
  validates_length_of :fantasy_name, in: 3..40
end
