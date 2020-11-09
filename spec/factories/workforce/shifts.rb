FactoryBot.define do
  factory :workforce_shift, class: 'Workforce::Shift' do
    association :job, factory: :job
    start_time { DateTime.now + 2.days}
    end_time { start_time + 12.hours }
    quantity { 100 }
  end
end
