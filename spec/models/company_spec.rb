# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'factory company' do
    context 'when using standard factory' do
      it 'is valid' do
        expect(build(:company)).to be_valid
      end
    end
  end
end
