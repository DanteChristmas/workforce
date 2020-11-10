require 'rails_helper'

module Workforce
  RSpec.describe Assignment, type: :model do
    describe 'structurally' do
      subject { build(:workforce_assignment) }

      it { should belong_to(:assignee) }
      it { should belong_to(:workforce_shift).class_name('Workforce::Shift') }
    end

    it 'should create an assignment' do
      assignment = create(:workforce_assignment)
      expect(Workforce::Assignment.count).to eq(1)
    end
  end
end
