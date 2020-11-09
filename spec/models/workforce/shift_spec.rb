require 'rails_helper'

module Workforce
  RSpec.describe Shift, type: :model do
    
    it 'should create a shift' do
      shift = create(:workforce_shift)
      expect(Workforce::Shift.count).to eq(1)
    end
  end
end
