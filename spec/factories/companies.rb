# frozen_string_literal: true

FactoryBot.define do
  sequence :corporate_names do |n|
    "Corporate Name ##{n}"
  end

  sequence :fantasy_names do |f|
    "Fantasy Name ##{f}"
  end

  sequence :emails do |e|
    "company_#{e}@domain.com"
  end

  factory :company do
    corporate_name { generate(:corporate_names) }
    fantasy_name { generate(:fantasy_names) }
    email { generate(:emails) }
    is_active { true }
  end
end
