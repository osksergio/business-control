# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'factory company' do
    context 'when using standard factory' do
      it { expect(build(:company)).to be_valid }
    end
  end

  describe 'validations' do
    context 'when the corporate name was not informed' do
      it { expect(build(:company, corporate_name: nil)).not_to be_valid }
    end

    context 'when activity status was not reported' do
      it { expect(build(:company, is_active: nil)).not_to be_valid }
    end

    context 'when the email was not informed' do
      it { expect(build(:company, email: nil)).not_to be_valid }
    end

    context 'when the fancy name is too short' do
      it { expect(build(:company, fantasy_name: 'AB')).not_to be_valid }
    end

    context 'when the fancy name is too long' do
      it 'fancy name with more than 60 characters' do
        expect(build(:company,
                     fantasy_name: '123456789012345678901234567890123456789012345678901234567890A')).not_to be_valid
      end
    end
  end
end
