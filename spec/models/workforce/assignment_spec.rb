require 'rails_helper'

module Workforce
  RSpec.describe Assignment, type: :model do
    describe 'structurally' do
      subject {build(:workforce_assignment)}

      it { should belong_to(:assignee) }
      it "should belong_to Workforce::Shift" do
        shift = subject.workforce_shift

        expect(shift.instance_of?(Workforce::Shift)).to be true
      end
    end

    describe 'validations' do
      it 'should error on create if shift is full' do
        shift = create(:workforce_shift, quantity: 0)  
        assignment = build(:workforce_assignment, workforce_shift: shift)

        expect(assignment.save).to be false
      end
    end

    it 'should create an assignment' do
      assignment = build(:workforce_assignment)
      assignment.save!
      expect(Workforce::Assignment.count).to eq(1)
    end
  end
end
