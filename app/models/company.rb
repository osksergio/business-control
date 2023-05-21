# frozen_string_literal: true

# model Company: multi-tenant pattern
class Company < ApplicationRecord
  validates :corporate_name, :is_active, :email, presence: true
end
