require 'rails_helper'

module Workforce
  RSpec.describe Shift, type: :model do
    describe 'structurally' do
      subject { build(:workforce_shift) }

      it { should belong_to(:job) }
      it { should have_many(:workforce_assignments).class_name('Workforce::Assignment') }
    end

    describe 'validations' do
      subject { build(:workforce_shift) }

      it { should validate_presence_of(:start_time) }
      it { should validate_presence_of(:end_time) }
      it { should validate_presence_of(:quantity) }

      it { should validate_numericality_of(:quantity) }

      it 'validates quantity is postive' do
        subject.quantity = -1

        expect(subject.save).to be false
      end

      it 'validates start_time is after end_time' do
        subject.start_time = subject.end_time + 1.second

        expect(subject.save).to be false
      end
    end

    it 'should create a shift' do
      shift = create(:workforce_shift)
      expect(Workforce::Shift.count).to eq(1)
    end
  end
end
